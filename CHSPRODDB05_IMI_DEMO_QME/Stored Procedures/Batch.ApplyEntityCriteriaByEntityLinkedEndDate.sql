SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Kriz, Mike
-- Create date: 12/9/2011
-- Description:	Applies the additional entity criteria based on the linked entity's End Date (or Begin Date when missing).  
--				(Date Comparer: 38DCC413-4871-4348-8B8C-DF351E2341B5)
-- =============================================
CREATE PROCEDURE [Batch].[ApplyEntityCriteriaByEntityLinkedEndDate]
(
	@BatchID int,
	@CountRecords bigint = 0 OUTPUT,
	@Iteration tinyint
)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @BeginInitSeedDate datetime;
	DECLARE @CalculateXml bit;
	DECLARE @DataRunID int;
	DECLARE @DataSetID int;
	DECLARE @EndInitSeedDate datetime;
	DECLARE @IsLogged bit;
	DECLARE @MeasureSetID int;
	DECLARE @OwnerID int;
	DECLARE @SeedDate datetime;
	
	BEGIN TRY;
		
		SELECT	@BeginInitSeedDate = DR.BeginInitSeedDate,
				@CalculateXml = DR.CalculateXml,
				@DataRunID = DR.DataRunID,
				@DataSetID = DS.DataSetID,
				@EndInitSeedDate = DR.EndInitSeedDate,
				@IsLogged = DR.IsLogged,
				@MeasureSetID = DR.MeasureSetID,
				@OwnerID = DS.OwnerID,
				@SeedDate = DR.SeedDate
		FROM	Batch.[Batches] AS B 
				INNER JOIN Batch.DataRuns AS DR
						ON B.DataRunID = DR.DataRunID
				INNER JOIN Batch.DataSets AS DS 
						ON B.DataSetID = DS.DataSetID 
		WHERE (B.BatchID = @BatchID);
			
		----------------------------------------------------------------------------------------------

		DECLARE @DateCompTypeE tinyint; --Entity
		--DECLARE @DateCompTypeN tinyint; --Enrollment
		--DECLARE @DateCompTypeS tinyint; --Seed Date
		--DECLARE @DateCompTypeV tinyint; --Event

		SELECT @DateCompTypeE = DateCompTypeID FROM Measure.DateComparerTypes WHERE Abbrev = 'E';
		--SELECT @DateCompTypeN = DateCompTypeID FROM Measure.DateComparerTypes WHERE Abbrev = 'N';
		--SELECT @DateCompTypeS = DateCompTypeID FROM Measure.DateComparerTypes WHERE Abbrev = 'S';
		--SELECT @DateCompTypeV = DateCompTypeID FROM Measure.DateComparerTypes WHERE Abbrev = 'V';

		----------------------------------------------------------------------------------------------

		DECLARE @DateComparerID int;
		SELECT	@DateComparerID = DateComparerID 
		FROM	Measure.DateComparers 
		WHERE	(DateComparerGuid = '38DCC413-4871-4348-8B8C-DF351E2341B5') AND
				(DateCompTypeID = @DateCompTypeE);

		WITH ValidEntities AS 
		(
			SELECT DISTINCT
					ME.EntityID 
			FROM	Measure.Entities AS ME
					INNER JOIN Proxy.EntityKey AS PEK
									ON ME.EntityID = PEK.EntityID
			WHERE	ME.MeasureSetID = @MeasureSetID AND
					ME.Iteration = @Iteration AND
					ME.IsEnabled = 1
		)
		SELECT	DATEADD(dd, MEC.AfterDOBDays, DATEADD(mm, MEC.AfterDOBMonths, M.DOB)) AS AfterDOBDate,
				MEC.Allow, MEC.AllowBeginDate, MEC.AllowEndDate, MEC.AllowEnrollSeg, MEC.AllowServDate,
				MEC.AllowSupplemental, MEC.AllowXfers, MEC.DateComparerID, MEC.DateComparerInfo, MEC.DateComparerLink,
				MEC.DaysMax, MEC.DaysMin, TE.DSMemberID, TE.DSProviderID,
				DATEADD(dd, MEC.BeginEnrollSegDays, DATEADD(mm, MEC.BeginEnrollSegMonths, ISNULL(TE.EndDate, TE.BeginDate))) AS EnrollSegBeginDate,
				DATEADD(dd, MEC.EndEnrollSegDays, DATEADD(mm, MEC.EndEnrollSegMonths, ISNULL(TE.EndDate, TE.BeginDate))) AS EnrollSegEndDate,
				TEB.EntityBaseID,
				DATEADD(dd, MEC.BeginDays, DATEADD(mm, MEC.BeginMonths, ISNULL(TE.EndDate, TE.BeginDate))) AS EntityBeginDate,
				MEC.EntityCritID, 
				DATEADD(dd, MEC.EndDays, DATEADD(mm, MEC.EndMonths, ISNULL(TE.EndDate, TE.BeginDate))) AS EntityEndDate,
				MEC.EntityID, MEC.IsForIndex, TE.LastSegBeginDate,
				MEC.RequirePaid, MEC.OptionNbr, ISNULL(MEC.QtyMax, 32767) AS QtyMax, ISNULL(MEC.QtyMin, 1) AS QtyMin,
				MEC.RankOrder, TE.DSEntityID AS SourceLinkID
		INTO	#Base
		FROM	Measure.EntityCriteria AS MEC
				INNER JOIN ValidEntities AS t
						ON MEC.EntityID = t.EntityID AND
							MEC.DateComparerID = @DateComparerID AND
							MEC.IsEnabled = 1
				INNER JOIN Proxy.EntityBase AS TEB
						ON MEC.EntityID = TEB.EntityID AND
							MEC.OptionNbr = TEB.OptionNbr AND
							(MEC.RankOrder > 1) AND
							(TEB.RankOrder = 1)
				INNER JOIN Proxy.Entities AS TE
						ON TEB.SourceLinkID = TE.DSEntityID
				INNER JOIN Proxy.Members AS M
						ON TEB.DSMemberID = M.DSMemberID AND
							TE.DSMemberID = M.DSMemberID;

		CREATE CLUSTERED INDEX IX_#Base ON #Base (DSMemberID, DateComparerID, DateComparerInfo, DateComparerLink, EntityBeginDate, EntityEndDate);

		SELECT	t.Allow, 
				@BatchID AS BatchID,
				TE.BeginDate,
				TE.BeginOrigDate,
				@DataRunID AS DataRunID,
				@DataSetID AS DataSetID,
				TE.DataSourceID,
				t.DateComparerID,
				t.DateComparerInfo,
				t.DateComparerLink,
				TE.[Days],
				TE.DSMemberID,
				TE.DSProviderID,
				TE.EndDate,
				TE.EndOrigDate,
				t.EntityBaseID,
				t.EntityBeginDate,
				t.EntityCritID, 
				t.EntityEndDate,
				t.EntityID, 
				CASE WHEN @CalculateXml = 1 THEN (SELECT ISNULL(TE.EntityInfo, NULL) FOR XML PATH('components'), TYPE) END AS EntityInfo,
				NULL AS EntityLinkInfo,
				t.IsForIndex,
				TE.IsSupplemental,
				t.OptionNbr, 
				1 AS Qty,
				t.QtyMax, 
				t.QtyMin,
				t.RankOrder,
				TE.DSEntityID AS SourceID,
				t.SourceLinkID
		FROM	#Base AS t
				INNER JOIN Proxy.Entities AS TE
						ON t.DateComparerInfo = TE.EntityID AND
							t.DateComparerID = @DateComparerID AND
							t.DSMemberID = TE.DSMemberID AND
							
							--Apply After-Date-of-Birth Criteria---------------------------------------------------
							((T.AfterDOBDate IS NULL) OR
							((T.AfterDOBDate IS NOT NULL) AND (TE.BeginDate >= T.AfterDOBDate))) AND
				
							--Apply Supplemental Data Criteria-----------------------------------------------------------------
							((t.AllowSupplemental = 1) OR
							((t.AllowSupplemental = 0) AND (TE.IsSupplemental = 0))) AND

							--Apply Transfer Criteria-----------------------------------------------------------------
							--((t.AllowXfers = 1) OR
							--((t.AllowXfers = 0) AND (TE.IsXfer = 0))) AND
							--((TE.XferID IS NULL) OR (TE.XferID = TE.EventBaseID)) AND 
				
							--Apply Date Criteria*--------------------------------------------------------------------
							(
								(
									(
										(t.AllowBeginDate = 1) AND 
										(TE.BeginDate BETWEEN T.EntityBeginDate AND T.EntityEndDate)
									) OR
									(
										(t.AllowEndDate = 1) AND 
										(TE.EndDate BETWEEN T.EntityBeginDate AND T.EntityEndDate)
									) OR
									(
										(t.AllowServDate = 1) AND 
										(
											(
												(TE.EndDate IS NULL) AND 
												(TE.BeginDate BETWEEN T.EntityBeginDate AND T.EntityEndDate)
											) OR
											(
												(TE.EndDate IS NOT NULL) AND 
												(TE.EndDate BETWEEN T.EntityBeginDate AND T.EntityEndDate)
											)
										) 
									) 
								) --OR
								
								--/*Pharmacy Active Script Addition, Date Criteria (Part 5 of 5)*/
								--(	
								--	(t.AllowActiveScript = 1) AND 
								--	(TE.EndOrigDate IS NOT NULL) AND
								--	(t.EntityDate > TE.BeginDate) AND
								--	(t.EntityDate BETWEEN TE.BeginDate AND TE.EndOrigDate)
								--)
							) AND
							
							--Apply Length/Number of Days Criteria----------------------------------------------------
							((t.DaysMax IS NULL) OR
							((t.DaysMax IS NOT NULL) AND (t.DaysMax >= DATEDIFF(dd, TE.BeginDate, TE.EndDate) + 1))) AND
							((t.DaysMin IS NULL) OR
							((t.DaysMin IS NOT NULL) AND (t.DaysMin <= DATEDIFF(dd, TE.BeginDate, TE.EndDate) + 1))) AND
							
							--Apply Paid Criteria---------------------------------------------------------------------
							--((t.RequirePaid = 0) OR
							--((t.RequirePaid = 1) AND (TE.IsPaid = 1))) AND
							
							--Apply Enrollment Segment Criteria-------------------------------------------------------
							((t.EnrollSegBeginDate IS NULL) OR (t.EnrollSegBeginDate <= TE.LastSegBeginDate)) AND
							((t.EnrollSegEndDate IS NULL) OR (t.EnrollSegEndDate >= TE.LastSegBeginDate)) AND
							
							--Apply Enrollment Segment Limitation on Matched Entity/Event Key Date--------------------
							((t.AllowEnrollSeg = 1) OR (t.LastSegBeginDate <= TE.BeginDate) OR (t.LastSegBeginDate <= TE.EndDate))
		ORDER BY t.Allow DESC, t.EntityCritID, t.DSMemberID, ISNULL(TE.EndDate, TE.BeginDate);
		
		SET @CountRecords = ISNULL(@CountRecords, 0) + @@ROWCOUNT;		
		
		RETURN 0;
	END TRY
	BEGIN CATCH;
		DECLARE @ErrApp nvarchar(128);
		DECLARE @ErrLine int;
		DECLARE @ErrLogID int;
		DECLARE @ErrMessage nvarchar(max);
		DECLARE @ErrNumber int;
		DECLARE @ErrSeverity int;
		DECLARE @ErrSource nvarchar(512);
		DECLARE @ErrState int;
		
		DECLARE @ErrResult int;
		
		SELECT	@ErrApp = DB_NAME(),
				@ErrLine = ERROR_LINE(),
				@ErrMessage = ERROR_MESSAGE(),
				@ErrNumber = ERROR_NUMBER(),
				@ErrSeverity = ERROR_SEVERITY(),
				@ErrSource = ERROR_PROCEDURE(),
				@ErrState = ERROR_STATE();
				
		EXEC @ErrResult = [Log].RecordError	@Application = @ErrApp,
											@LineNumber = @ErrLine,
											@Message = @ErrMessage,
											@ErrorNumber = @ErrNumber,
											@ErrorType = 'Q',
											@ErrLogID = @ErrLogID OUTPUT,
											@PerformRollback = 0,
											@Severity = @ErrSeverity,
											@Source = @ErrSource,
											@State = @ErrState;
		
		IF @ErrResult <> 0
			BEGIN
				PRINT '*** Error Log Failure:  Unable to record the specified entry. ***'
				SET @ErrNumber = @ErrLine * -1;
			END
			
		RETURN @ErrNumber;
	END CATCH;
END










GO
GRANT VIEW DEFINITION ON  [Batch].[ApplyEntityCriteriaByEntityLinkedEndDate] TO [db_executer]
GO
GRANT EXECUTE ON  [Batch].[ApplyEntityCriteriaByEntityLinkedEndDate] TO [db_executer]
GO
GRANT EXECUTE ON  [Batch].[ApplyEntityCriteriaByEntityLinkedEndDate] TO [Processor]
GO
