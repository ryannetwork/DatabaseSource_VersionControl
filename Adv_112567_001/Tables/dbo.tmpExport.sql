CREATE TABLE [dbo].[tmpExport]
(
[MEMBER ID] [varchar] (22) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[Member Individual ID] [varchar] (15) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[Claim ID] [varchar] (50) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[PROVIDER TYPE] [varchar] (50) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[SERVICE FROM DT] [date] NULL,
[SERVICE TO DT] [date] NULL,
[REN Provider ID] [varchar] (20) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ICD Code] [varchar] (10) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[DX CODE CATEGORY] [varchar] (2) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[ICD CODE DISPOSITION] [varchar] (10) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ICD CODE DISPOSITION REASON] [varchar] (250) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[Page From] [smallint] NULL,
[Page To] [smallint] NULL,
[PID] [varchar] (20) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[REN_TIN] [varchar] (20) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[REN_PIN] [varchar] (20) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[CHART NAME] [varchar] (78) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[Member_PK] [int] NULL,
[Suspect_PK] [bigint] NOT NULL,
[ChaseID] [bigint] NULL
) ON [PRIMARY]
GO
