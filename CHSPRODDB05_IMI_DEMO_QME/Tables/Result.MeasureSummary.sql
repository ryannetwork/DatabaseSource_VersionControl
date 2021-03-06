CREATE TABLE [Result].[MeasureSummary]
(
[Age] [tinyint] NULL,
[AgeBandID] [int] NULL,
[AgeBandSegID] [int] NULL,
[BatchID] [int] NULL,
[BitProductLines] [bigint] NOT NULL CONSTRAINT [DF_MeasureSummary_BitProductLines] DEFAULT ((0)),
[ClinCondID] [int] NULL,
[CountEvents] [bigint] NULL,
[CountMembers] [bigint] NULL,
[CountRecords] [bigint] NULL,
[DataRunID] [int] NOT NULL,
[DataSetID] [int] NOT NULL,
[Days] [bigint] NULL,
[EnrollGroupID] [int] NULL,
[Gender] [tinyint] NULL,
[IsDenominator] [bigint] NULL,
[IsExclusion] [bigint] NULL,
[IsIndicator] [bigint] NULL,
[IsNegative] [bigint] NULL,
[IsNumerator] [bigint] NULL,
[IsNumeratorAdmin] [bigint] NULL,
[IsNumeratorFSS] [bigint] NULL,
[IsNumeratorMedRcd] [bigint] NULL,
[IsSupplementalDenominator] [bigint] NULL,
[IsSupplementalExclusion] [bigint] NULL,
[IsSupplementalIndicator] [bigint] NULL,
[IsSupplementalNumerator] [bigint] NULL,
[MeasureID] [int] NOT NULL,
[MeasureXrefID] [int] NULL,
[MetricID] [int] NOT NULL,
[MetricXrefID] [int] NULL,
[PayerID] [smallint] NOT NULL,
[PopulationID] [int] NOT NULL,
[ProductLineID] [smallint] NOT NULL,
[Qty] [bigint] NULL,
[Qty2] [bigint] NULL,
[Qty3] [bigint] NULL,
[Qty4] [bigint] NULL,
[ResultRowGuid] [uniqueidentifier] NOT NULL CONSTRAINT [DF_MeasureSummary_ResultRowGuid] DEFAULT (newid()),
[ResultRowID] [bigint] NOT NULL IDENTITY(1, 1),
[ResultTypeID] [tinyint] NOT NULL,
[Weight] [decimal] (18, 10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [Result].[MeasureSummary] ADD CONSTRAINT [PK_MeasureSummary] PRIMARY KEY CLUSTERED  ([ResultRowID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MeasureSummary_MeasureMetric] ON [Result].[MeasureSummary] ([DataRunID], [PopulationID], [MeasureID], [MetricID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MeasureSummary_MeasureMetricXref] ON [Result].[MeasureSummary] ([DataRunID], [PopulationID], [MeasureXrefID], [MetricXrefID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_MeasureSummary] ON [Result].[MeasureSummary] ([DataSetID], [DataRunID], [ProductLineID], [PopulationID], [PayerID], [EnrollGroupID], [ResultTypeID], [MeasureID], [MetricID], [ClinCondID], [AgeBandID], [AgeBandSegID], [Gender], [Age], [BatchID]) ON [PRIMARY]
GO
