CREATE TABLE [dbo].[Scorekey_FPC_Template]
(
[MemID] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Meas] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Payer] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Epop] [bit] NULL,
[Expected] [int] NULL,
[Actual] [int] NULL
) ON [PRIMARY]
GO
