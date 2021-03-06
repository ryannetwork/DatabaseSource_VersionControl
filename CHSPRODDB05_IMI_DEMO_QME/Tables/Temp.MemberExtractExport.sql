CREATE TABLE [Temp].[MemberExtractExport]
(
[Client] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MeasureSet] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DataSet] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Population] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProductLines] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MeasureClass/Domain] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SubMeasureClass/SubDomain] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Measure] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MeasureDescription] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Metric] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MetricDescription] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ResultType] [tinyint] NOT NULL,
[ResultTypeDescription] [varchar] (38) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustomerMemberID] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ImiMemberID] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ReportMemberID] [int] NOT NULL,
[MemberFirstName] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLastName] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateOfBirth] [datetime] NOT NULL,
[SSN] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RegionName] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SubRegionName] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedGrpName] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EventDate] [datetime] NOT NULL,
[Denominator] [bit] NULL,
[Exclusion] [bit] NULL,
[Compliant] [bit] NULL,
[Non-Compliant] [int] NULL,
[Age] [tinyint] NULL,
[Gender] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Days/LOS] [smallint] NULL,
[Quantity] [int] NULL,
[PCR_BaseWeight] [decimal] (18, 12) NULL,
[PCR_DischargeWeight] [decimal] (18, 12) NULL,
[PCR_DemographicWeight] [decimal] (18, 12) NULL,
[PCR_ComorbidWeight] [decimal] (18, 12) NULL,
[PCR_SurgeryWeight] [decimal] (18, 12) NULL,
[PCR_AdjustedProbability] [decimal] (18, 12) NULL,
[PCR_Variance] [decimal] (18, 12) NULL
) ON [PRIMARY]
GO
