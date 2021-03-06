SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

--/*
CREATE PROC [CGF_REP].[rptProviderListMeasure_DataSet2]
@client VARCHAR(100) = NULL,
@endseeddate DATETIME= NULL,
@Metric VARCHAR(200) = NULL,
@PopulationDesc VARCHAR(50) = NULL,
@ComplianceLimit NUMERIC(5,2) = 1.0,
@MinDenominator INT = NULL
AS
--*/

/*--------------------
DECLARE  @client VARCHAR(100),
	@endseeddate DATETIME,
	@Metric VARCHAR(200),
	@PopulationDesc VARCHAR(50) ,
	@ComplianceLimit NUMERIC(5,2) = .50,
	@MinDenominator INT = 10
--------------------*/


if @client is null 
	select @Client = max(Client) from cgf.ResultsByMember_sum

IF @metric IS NULL
	SELECT @metric =  'CCS-Cervical Cancer Screening'

IF @endseeddate is null 
	SELECT @endseeddate = MAX(EndSeedDate)
		FROM CGF.ResultsByMember rbm
		WHERE Client = @Client
			AND MeasureMetricDesc = @Metric

--	Report Logging
INSERT INTO cgf_rep.ReportVariableLog
	(RunDate ,
	ProcName ,
	Var1Name ,
	Var1Val ,
	Var2Name,
	Var2Val ,
	Var3Name ,
	Var3Val ,
	Var4Name ,
	Var4Val )
SELECT RunDate = GETDATE(),
	ProcName = OBJECT_NAME( @@PROCID),
	Var1Name = '@client',
	Var1Val = @client,
	Var2Name = '@endseeddate',
	Var2Val = @endseeddate,
	Var3Name = '@Metric',
	Var3Val = @Metric,
	Var4Name = '@PopulationDesc',
	Var4Val = @PopulationDesc


SELECT  curr.ProviderID,
		curr.ProviderFullName,
		Curr.MeasureMetricDesc,
		EndSeedDate = @endseeddate,
		Client = @client,
		CurrentDenominator = curr.Denominator,
		CurrentCompliance = curr.Compliance,
		PreviousMthDenominator = PrevPeriod.Denominator,
		PreviousMthCompliance = PrevPeriod.Compliance ,
		PreviousYrDenominator = PrevYear.Denominator ,
		PreviousYrCompliance = PrevYear.Compliance 
FROM (SELECT a.ProviderID,
			a.ProviderFullName,
			a.MeasureMetricDesc,
			EndSeedDate = a.EndSeedDate,
			Denominator = Max(IsDenominator ),
			Compliance = AVG(Compliance )
		FROM (SELECT rbm.ProviderID,
					p.ProviderFullName,
					rbm.EndSeedDate,
					rbm.MeasureSet,
					rbm.Measure,
					rbm.MeasureDesc,
					rbm.MeasureMetricDesc,
					IsDenominator = sum(rbm.IsDenominator),
					Compliance = SUM(rbm.IsNumerator)/SUM(rbm.IsDenominator*1.0)
				FROM CGF.ResultsByMember rbm
					INNER JOIN provider p
						ON rbm.ProviderID = p.ProviderID
					INNER JOIN CGF.metrics mt
						ON rbm.MetricXrefGuid = mt.MetricXrefGuid
						AND mt.IsShown = 1
				WHERE rbm.IsDenominator = 1 
					AND rbm.Client = @client
					AND ISNULL(rbm.PopulationDesc,'Not Defined') = ISNULL(@PopulationDesc,ISNULL(rbm.PopulationDesc,'Not Defined'))
					AND rbm.EndSeedDate = @endseeddate
					AND rbm.MeasureMetricDesc = ISNULL(@Metric,rbm.MeasureMetricDesc)
				GROUP BY rbm.ProviderID,
					p.ProviderFullName,
					rbm.client,
					rbm.EndSeedDate,
					rbm.MeasureSet,
					rbm.Measure,
					rbm.MeasureDesc,
					rbm.MeasureMetricDesc
				) a
		GROUP BY a.ProviderID,
			a.ProviderFullName,
			a.EndSeedDate,
			a.MeasureMetricDesc
		) Curr
		LEFT JOIN (SELECT a.ProviderID,
							a.ProviderFullName,
							a.MeasureMetricDesc,
							EndSeedDate = a.EndSeedDate,
							Denominator = Max(IsDenominator ),
							Compliance = AVG(Compliance )
						FROM (SELECT rbm.ProviderID,
									p.ProviderFullName,
									rbm.client,
									rbm.EndSeedDate,
									rbm.MeasureSet,
									rbm.Measure,
									rbm.MeasureDesc,
									rbm.MeasureMetricDesc,
									IsDenominator = sum(rbm.IsDenominator),
									Compliance = SUM(rbm.IsNumerator)/SUM(rbm.IsDenominator*1.0)
								FROM CGF.ResultsByMember rbm
									INNER JOIN provider p
										ON rbm.ProviderID = p.ProviderID
									INNER JOIN CGF.metrics mt
										ON rbm.MetricXrefGuid = mt.MetricXrefGuid
										AND mt.IsShown = 1
								WHERE rbm.IsDenominator = 1 
									AND rbm.Client = @client
									AND ISNULL(rbm.PopulationDesc,'Not Defined') = ISNULL(@PopulationDesc,ISNULL(rbm.PopulationDesc,'Not Defined'))
									AND rbm.EndSeedDate = (SELECT MAX(endSeedDate) FROM CGF.ResultsByMember WHERE Client = @Client and EndSeedDate < @endseeddate)
									AND rbm.MeasureMetricDesc = ISNULL(@Metric,rbm.MeasureMetricDesc)
								GROUP BY rbm.ProviderID,
									p.ProviderFullName,
									rbm.client,
									rbm.EndSeedDate,
									rbm.MeasureSet,
									rbm.Measure,
									rbm.MeasureDesc,
									rbm.MeasureMetricDesc
								) a
						GROUP BY a.ProviderID,
							a.ProviderFullName,
							a.EndSeedDate,
							a.MeasureMetricDesc
			) PrevPeriod
				ON curr.ProviderID = PrevPeriod.ProviderID
				AND curr.ProviderFullName = PrevPeriod.ProviderFullName
				AND curr.MeasureMetricDesc = prevPeriod.MeasureMetricDesc
		LEFT JOIN (SELECT a.ProviderID,
							a.ProviderFullName,
							EndSeedDate = a.EndSeedDate,
							a.MeasureMetricDesc,
							Denominator = Max(IsDenominator ),
							Compliance = AVG(Compliance )
						FROM (SELECT rbm.ProviderID,
									p.ProviderFullName,
									rbm.client,
									rbm.EndSeedDate,
									rbm.MeasureSet,
									rbm.Measure,
									rbm.MeasureDesc,
									rbm.MeasureMetricDesc,
									IsDenominator = sum(rbm.IsDenominator),
									Compliance = SUM(rbm.IsNumerator)/SUM(rbm.IsDenominator*1.0)
								FROM CGF.ResultsByMember rbm
									INNER JOIN provider p
										ON rbm.ProviderID = p.ProviderID
									INNER JOIN CGF.metrics mt
										ON rbm.MetricXrefGuid = mt.MetricXrefGuid
										AND mt.IsShown = 1
								WHERE rbm.IsDenominator = 1 
									AND rbm.Client = @client
									AND ISNULL(rbm.PopulationDesc,'Not Defined') = ISNULL(@PopulationDesc,ISNULL(rbm.PopulationDesc,'Not Defined'))
									AND rbm.EndSeedDate = DATEADD(year,-1,@endseeddate)
									AND rbm.MeasureMetricDesc = ISNULL(@Metric,rbm.MeasureMetricDesc)
								GROUP BY rbm.ProviderID,
									p.ProviderFullName,
									rbm.client,
									rbm.EndSeedDate,
									rbm.MeasureSet,
									rbm.Measure,
									rbm.MeasureDesc,
									rbm.MeasureMetricDesc
								) a
						GROUP BY a.ProviderID,
							a.ProviderFullName,
							a.EndSeedDate,
							a.MeasureMetricDesc
			) PrevYear
				ON curr.ProviderID = PrevYear.ProviderID
				AND curr.ProviderFullName = PrevYear.ProviderFullName
				AND curr.MeasureMetricDesc = prevyear.MeasureMetricDesc
	WHERE ISNULL(@ComplianceLimit,1.00) >= curr.Compliance 
		AND ISNULL(@MinDenominator,curr.Denominator) <= curr.Denominator
	ORDER BY curr.ProviderFullName

GO
GRANT VIEW DEFINITION ON  [CGF_REP].[rptProviderListMeasure_DataSet2] TO [db_ViewProcedures]
GO
