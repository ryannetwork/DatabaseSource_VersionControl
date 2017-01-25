SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [Report].[GetMetricResults]
(
	@MeasureID int = NULL,
	@MetricID int = NULL,
	@Product varchar(20) = NULL,
	@ProductLine varchar(20) = NULL
)
AS
BEGIN
	SET NOCOUNT ON;

	WITH ResultsDetail AS
	(
		SELECT	MBR.CustomerMemberID,
				MMMS.ExclusionReason,
				CONVERT(int, MMMS.Denominator) AS IsDenominator,
				CASE WHEN MMMS.Exclusion > 0  AND MMMS.SampleVoid <= 0 THEN 1 ELSE 0 END AS IsExclusion,
				CASE WHEN MMMS.Denominator > 0 AND MMMS.HybridHit <= 0 THEN 1 ELSE 0 END AS IsNotNumerator,
				CASE WHEN MMMS.Denominator > 0 AND MMMS.HybridHit > 0 THEN 1 ELSE 0 END AS IsNumerator,
				CASE WHEN MMMS.Denominator > 0 AND MMMS.AdministrativeHit > 0 THEN 1 ELSE 0 END AS IsNumeratorAdmin,
				CASE WHEN MMMS.Denominator > 0 AND MMMS.MedicalRecordHit > 0 THEN 1 ELSE 0 END AS IsNumeratorMedRcd,
				CONVERT(int, MMMS.SampleVoid) AS IsSampleVoid,
				ISNULL(MMS.PPCDeliveryDate, MMS.DischargeDate) AS KeyDate,
				M.HEDISMeasure AS MeasureAbbrev,
				M.HEDISMeasureDescription AS MeasureDescr,
				M.MeasureID,
				M.HEDISMeasure + ' - ' + M.HEDISMeasureDescription AS MeasureLongDescr,	
				MBR.DateOfBirth AS MemberDOB,
				MBR.Gender AS MemberGender,
				MBR.MemberID,
				MBR.NameFirst AS MemberNameFirst,
				MBR.NameLast AS MemberNameLast,
				MBR.NameMiddleInitial AS MemberNameMid,
				MX.HEDISSubMetricCode AS MetricAbbrev,
				MX.HEDISSubMetricDescription AS MetricDescr,
				MX.HEDISSubMetricID AS MetricID,
				MX.HEDISMeasureInit + ' - ' +
				--		CASE WHEN MX.HEDISSubMetricCode = MX.DisplayName AND
				--				  MX.HEDISSubMetricCode = MX.HEDISMeasureInit
				--			 THEN 'Numerator' 
				--			 ELSE MX.DisplayName 
				--			 END AS MetricLongDescr,
				MX.ReportName AS MetricLongDescr,
				--CASE WHEN MX.HEDISSubMetricCode = MX.DisplayName AND
				--		  MX.HEDISSubMetricCode = MX.HEDISMeasureInit
				--	 THEN 'Numerator' 
				--	 ELSE MX.DisplayName 
				--	 END AS MetricShortDescr,
				MX.ReportName AS MetricShortDescr,
				MMS.Product,
				MMS.ProductLine,
				MMS.SampleDrawOrder,
				MMS.SampleType,
				'###-##-' + RIGHT(MBR.SSN, 4) AS SSN
		FROM	dbo.MemberMeasureSample AS MMS WITH(NOLOCK)
				INNER JOIN dbo.MemberMeasureMetricScoring AS MMMS WITH(NOLOCK)
						ON MMS.MemberMeasureSampleID = MMMS.MemberMeasureSampleID
				INNER JOIN dbo.Member AS MBR WITH(NOLOCK)
						ON MMS.MemberID = MBR.MemberID
				INNER JOIN dbo.Measure AS M WITH(NOLOCK)
						ON MMS.MeasureID = M.MeasureID
				INNER JOIN dbo.HEDISSubMetric AS MX WITH(NOLOCK)
						ON MMMS.HEDISSubMetricID = MX.HEDISSubMetricID                         
		WHERE	(MX.DisplayInScoringPanel = 1)
	)
	--SELECT	*
	--FROM	ResultsDetail
	--ORDER BY MeasureAbbrev, MetricAbbrev, SampleDrawOrder;
	SELECT	SUM(RD.IsDenominator) AS IsDenominator,
			SUM(RD.IsExclusion) AS IsExclusion,
			SUM(RD.IsNotNumerator) AS IsNotNumerator,
			SUM(RD.IsNumerator) AS IsNumerator,
			SUM(RD.IsNumeratorAdmin) AS IsNumeratorAdmin,
			SUM(RD.IsNumeratorMedRcd) AS IsNumeratorMedRcd,
			SUM(RD.IsSampleVoid) AS IsSampleVoid,
			RD.MeasureAbbrev,
			RD.MeasureDescr,
			RD.MeasureID,
			RD.MeasureLongDescr,
			RD.MetricAbbrev,
			RD.MetricDescr,
			RD.MetricID,
			RD.MetricLongDescr,
			RD.MetricShortDescr,
			RD.Product,
			RD.ProductLine
	FROM	ResultsDetail AS RD
	WHERE	((@MeasureID IS NULL) OR (RD.MeasureID = @MeasureID)) AND
			((@MetricID IS NULL) OR (RD.MetricID = @MetricID)) AND
			((@Product IS NULL) OR (RD.Product = @Product)) AND
			((@ProductLine IS NULL) OR (RD.ProductLine = @ProductLine))           
	GROUP BY RD.MeasureAbbrev,
			RD.MeasureDescr,
			RD.MeasureID,
			RD.MeasureLongDescr,
			RD.MetricAbbrev,
			RD.MetricDescr,
			RD.MetricID,
			RD.MetricLongDescr,
			RD.MetricShortDescr,
			RD.Product,
			RD.ProductLine
	ORDER BY MeasureAbbrev, MetricAbbrev
	OPTION (OPTIMIZE FOR (@MeasureID = NULL, @MetricID = NULL, @Product = NULL, @ProductLine = NULL));

END

GO
GRANT EXECUTE ON  [Report].[GetMetricResults] TO [Reporting]
GO
