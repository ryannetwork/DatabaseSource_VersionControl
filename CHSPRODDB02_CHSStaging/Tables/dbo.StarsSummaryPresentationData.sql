CREATE TABLE [dbo].[StarsSummaryPresentationData]
(
[StarMeasureCategory] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StarMeasureSubCategory] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Domain] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PBP] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PBP Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Star Rating Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MeasurementYear] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MeasurementMonth] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Measure ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Star Measure Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Numerator] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Denominator] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Estimated Metric] [float] NULL,
[Estimated Star] [float] NULL,
[Next Star] [float] NULL,
[Next Cut Point] [float] NULL,
[NumForNextStar] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IncForNextStar] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Target Metric] [float] NULL,
[Target Star] [float] NULL,
[NumForTarget] [float] NULL,
[IncForTarget] [float] NULL,
[Source Comments for Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_C_D_Display_Measure] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Stars Measurement Period] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Measurement Period Open/Closed/Future] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HEDIS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HOS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAHPS/ SURVEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Other] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Weighting Category] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part C Summary Weighting] [float] NULL,
[MA-PD Overall Weighting] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[5 Star] [float] NULL,
[4 Star] [float] NULL,
[3 Star] [float] NULL,
[2 Star] [float] NULL,
[1 Star] [float] NULL,
[Threshold Comments] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Weighted Star] [float] NULL,
[Base Count] [float] NULL,
[Load Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoadDate] [datetime] NULL
) ON [PRIMARY]
GO
