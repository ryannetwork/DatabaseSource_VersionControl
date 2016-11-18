CREATE TABLE [ref].[MIXMMAP]
(
[MedicalConditionCode] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ICD10_TypeCode] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ICD10_UnformattedCode] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TransactionCode] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedConToICD10] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ICD10ToMedCon] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Reserve] [varchar] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HashDiff] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoadDate] [datetime] NULL,
[RecordEndDate] [datetime] NULL
) ON [PRIMARY]
GO
