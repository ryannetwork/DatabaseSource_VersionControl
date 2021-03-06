SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Kriz, Mike
-- Create date: 2/7/2016
-- Description:	Calculates the detailed results of the IHU measure.
-- =============================================
CREATE PROCEDURE [Ncqa].[IHU_CalculateMeasureDetail]
(
	@BatchID int = NULL,
	@CountRecords bigint = NULL OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @LogBeginTime datetime;
	DECLARE @LogDescr varchar(256);
	DECLARE @LogEndTime datetime;
	DECLARE @LogEntryXrefGuid uniqueidentifier;
	DECLARE @LogObjectName nvarchar(128);
	DECLARE @LogObjectSchema nvarchar(128);

	DECLARE @BeginInitSeedDate datetime;
	DECLARE @DataRunID int;
	DECLARE @DataSetID int;
	DECLARE @EndInitSeedDate datetime;
	DECLARE @IsLogged bit;
	DECLARE @MeasureSetID int;
	DECLARE @OwnerID int;
	DECLARE @SeedDate datetime;
	
	DECLARE @Result int;

	BEGIN TRY;
			
		SELECT	@BeginInitSeedDate = DR.BeginInitSeedDate,
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
		WHERE	(B.BatchID = @BatchID);
	
		SET @LogBeginTime = GETDATE();
		SET @LogObjectName = 'IHU_CalculateMeasureDetail'; 
		SET @LogObjectSchema = 'Ncqa'; 
		
		--Added to determine @LogEntryXrefGuid value---------------------------
		SELECT @LogEntryXrefGuid = [Log].GetEntryXrefGuid (@LogObjectSchema, @LogObjectName);
		-----------------------------------------------------------------------
				
		BEGIN TRY;
			WITH MetricKey(Measure, Metric, QtyMetric) AS
			(
				SELECT	'IHU', 'IHUS', 'IHUSQTY'
				UNION
				SELECT	'IHU', 'IHUM', 'IHUMQTY'
				UNION
				SELECT	'IHU', 'IHUT', 'IHUTQTY'
			)
			SELECT	MIN(RMTEM1.EvalTypeID) AS EvalTypeID1, MIN(RMTEM2.EvalTypeID) AS EvalTypeID2,
					MM.MeasureID, MX.MetricID, QMX.MetricID AS QMetricID
			INTO	#MetricKey
			FROM	Measure.Measures AS MM
					INNER JOIN MetricKey AS K
							ON K.Measure = MM.Abbrev
					INNER JOIN Measure.Metrics AS MX
							ON MX.MeasureID = MM.MeasureID AND
								MX.Abbrev = K.Metric
					INNER JOIN Measure.Metrics AS QMX
							ON QMX.MeasureID = MM.MeasureID AND
								QMX.Abbrev = K.QtyMetric
					INNER JOIN Risk.MetricToEvalMapping AS RMTEM1
							ON RMTEM1.MetricID = MX.MetricID AND
								RMTEM1.AggregateID = 1
					INNER JOIN Risk.MetricToEvalMapping AS RMTEM2
							ON RMTEM2.MetricID = MX.MetricID AND
								RMTEM2.AggregateID = 2
			WHERE	(MM.MeasureSetID = @MeasureSetID)
			GROUP BY MM.MeasureID, MX.MetricID, QMX.MetricID;

			CREATE UNIQUE CLUSTERED INDEX IX_#MetricKey ON #MetricKey (QMetricID, MeasureID);

			SELECT	RMD.DSMemberID, 
					K.MetricID, 
					SUM(RMD.Qty) AS Qty
			INTO	#Qty
			FROM	Result.MeasureDetail AS RMD
					INNER JOIN #MetricKey AS K
							ON K.MeasureID = RMD.MeasureID AND
								K.QMetricID = RMD.MetricID
			WHERE	(RMD.BatchID = @BatchID) AND
					(RMD.DataRunID = @DataRunID) AND
					(RMD.DataSetID = @DataSetID)
			GROUP BY RMD.DSMemberID, K.MetricID;

			CREATE UNIQUE CLUSTERED INDEX IX_#Qty ON #Qty (MetricID, DSMemberID);

			DROP INDEX IX_#MetricKey ON #MetricKey;
			CREATE UNIQUE CLUSTERED INDEX IX_#MetricKey ON #MetricKey (MetricID, MeasureID);

			DELETE FROM Result.MeasureDetail_PPV_PUCV WHERE BatchID = @BatchID AND DataRunID = @DataRunID AND DataSetID = @DataSetID AND MetricID IN (SELECT MetricID FROM #MetricKey);

			IF NOT EXISTS(SELECT TOP 1 1 FROM Result.MeasureDetail_PPV_PUCV)
				TRUNCATE TABLE Result.MeasureDetail_PPV_PUCV;

			INSERT INTO Result.MeasureDetail_PPV_PUCV
					(BatchID,
					DataRunID,
					DataSetID,
					DSEntityID,
					DSMemberID,
					ExpectedQty,
					MetricID,
					Ppv,
					PpvBaseWeight,
					PpvDemoWeight,
					PpvHccWeight,
					PpvTotalWeight,
					Pucv,
					PucvBaseWeight,
					PucvDemoWeight,
					PucvHccWeight,
					PucvTotalWeight,
					Qty,
					SourceRowGuid,
					SourceRowID)
			SELECT	RMD.BatchID,
					RMD.DataRunID,
					RMD.DataSetID,
					RMD.DSEntityID,
					RMD.DSMemberID,
					ISNULL(CONVERT(decimal(24, 18), ROUND((EXP(HCC1.TotalWeight)) / (1 + EXP(HCC1.TotalWeight)) * HCC2.TotalWeight, 4)), 0) AS ExpectedQty,
					RMD.MetricID,
					CONVERT(decimal(24, 18), ROUND((EXP(HCC1.TotalWeight)) / (1 + EXP(HCC1.TotalWeight)), 4)) AS Ppd,
					HCC1.BaseWeight AS PpdBaseWeight,
					HCC1.DemoWeight AS PpdDemoWeight,
					HCC1.HClinCondWeight AS PpdHccWeight,
					HCC1.TotalWeight AS PpdTotalWeight,
					HCC2.TotalWeight AS Pucd,
					HCC2.BaseWeight AS PucdBaseWeight,
					HCC2.DemoWeight AS PucdDemoWeight,
					HCC2.HClinCondWeight AS PucdHccWeight,
					HCC2.TotalWeight AS PucdTotalWeight,
					ISNULL(Qty.Qty, 0) AS Qty,
					RMD.ResultRowGuid AS SourceRowGuid,
					RMD.ResultRowID AS SourceRowID
			FROM	Result.MeasureDetail AS RMD
					INNER JOIN #MetricKey AS MK
							ON MK.MeasureID = RMD.MeasureID AND
								MK.MetricID = RMD.MetricID
					LEFT OUTER JOIN #Qty AS Qty
							ON Qty.DSMemberID = RMD.DSMemberID AND
								Qty.MetricID = RMD.MetricID
					LEFT OUTER JOIN Result.RiskHCCDetail AS HCC1
							ON HCC1.SourceRowID = RMD.ResultRowID AND
								HCC1.DSEntityID = RMD.DSEntityID AND
								HCC1.DSMemberID = RMD.DSMemberID AND
								HCC1.EvalTypeID = MK.EvalTypeID1 AND
								HCC1.MetricID = RMD.MetricID
					LEFT OUTER JOIN Result.RiskHCCDetail AS HCC2
							ON HCC2.SourceRowID = RMD.ResultRowID AND
								HCC2.DSEntityID = RMD.DSEntityID AND
								HCC2.DSMemberID = RMD.DSMemberID AND
								HCC2.EvalTypeID = MK.EvalTypeID2 AND
								HCC2.MetricID = RMD.MetricID
			WHERE	(RMD.IsDenominator = 1) AND
					(RMD.BatchID = @BatchID) AND
					(RMD.DataRunID = @DataRunID) AND
					(RMD.DataSetID = @DataSetID)
			ORDER BY RMD.ResultRowID;

			SET @CountRecords = ISNULL(@CountRecords, 0);

			UPDATE	RMD
			SET		Qty = IHU.Qty,
					Qty2 = ROUND(IHU.ExpectedQty, 0)
			FROM	Result.MeasureDetail AS RMD
					INNER JOIN Result.MeasureDetail_PPV_PUCV AS IHU
							ON IHU.SourceRowGuid = RMD.ResultRowGuid AND
								IHU.SourceRowID = RMD.ResultRowID AND
								IHU.MetricID = RMD.MetricID
			WHERE	(RMD.BatchID = @BatchID) AND
					(RMD.DataRunID = @DataRunID) AND
					(RMD.DataSetID = @DataSetID) AND
					(RMD.MetricID IN (SELECT MetricID FROM #MetricKey));

			SET @LogDescr = ' - Calculating IHU measure results for BATCH ' + CAST(@BatchID AS varchar(32)) + ' succeeded.'; 
			SET @LogEndTime = GETDATE();
			
			EXEC @Result = Log.RecordEntry	@BatchID = @BatchID,
												@BeginTime = @LogBeginTime,
												@CountRecords = @CountRecords, 
												@DataRunID = @DataRunID,
												@DataSetID = @DataSetID,
												@Descr = @LogDescr,
												@EndTime = @LogEndTime, 
												@EntryXrefGuid = @LogEntryXrefGuid, 
												@IsSuccess = 1,
												@SrcObjectName = @LogObjectName,
												@SrcObjectSchema = @LogObjectSchema;


			RETURN 0;
		END TRY
		BEGIN CATCH;
			IF @@TRANCOUNT > 0
				ROLLBACK;
				
			DECLARE @ErrorLine int;
			DECLARE @ErrorLogID int;
			DECLARE @ErrorMessage nvarchar(max);
			DECLARE @ErrorNumber int;
			DECLARE @ErrorSeverity int;
			DECLARE @ErrorSource nvarchar(512);
			DECLARE @ErrorState int;
			
			DECLARE @ErrorResult int;
			
			SELECT	@ErrorLine = ERROR_LINE(),
					@ErrorMessage = ERROR_MESSAGE(),
					@ErrorNumber = ERROR_NUMBER(),
					@ErrorSeverity = ERROR_SEVERITY(),
					@ErrorSource = ERROR_PROCEDURE(),
					@ErrorState = ERROR_STATE();
					
			EXEC @ErrorResult = [Log].RecordError	@LineNumber = @ErrorLine,
													@Message = @ErrorMessage,
													@ErrorNumber = @ErrorNumber,
													@ErrorType = 'Q',
													@ErrLogID = @ErrorLogID OUTPUT,
													@Severity = @ErrorSeverity,
													@Source = @ErrorSource,
													@State = @ErrorState,
													@PerformRollback = 0;
			
			
			SET @LogEndTime = GETDATE();
			SET @LogDescr = ' - Calculating IHU measure results for BATCH ' + CAST(@BatchID AS varchar(32)) + ' failed!'; 
			
			EXEC @Result = Log.RecordEntry	@BatchID = @BatchID,
												@BeginTime = @LogBeginTime,
												@CountRecords = -1, 
												@DataRunID = @DataRunID,
												@DataSetID = @DataSetID,
												@Descr = @LogDescr,
												@EndTime = @LogBeginTime,
												@EntryXrefGuid = @LogEntryXrefGuid, 
												@ErrLogID = @ErrorLogID,
												@IsSuccess = 0,
												@SrcObjectName = @LogObjectName,
												@SrcObjectSchema = @LogObjectSchema;
														
			SET @ErrorMessage = REPLACE(@LogDescr, '!', ': ') + @ErrorMessage + ' (Error: ' + CAST(@ErrorNumber AS nvarchar) + ')';
			RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
		END CATCH;
	END TRY
	BEGIN CATCH;
		DECLARE @ErrApp nvarchar(128);
		DECLARE @ErrLine int;
		DECLARE @ErrLogID int;
		DECLARE @ErrMessage nvarchar(MAX);
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
GRANT EXECUTE ON  [Ncqa].[IHU_CalculateMeasureDetail] TO [Processor]
GO
