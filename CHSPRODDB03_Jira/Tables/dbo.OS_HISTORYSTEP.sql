CREATE TABLE [dbo].[OS_HISTORYSTEP]
(
[ID] [numeric] (18, 0) NOT NULL,
[ENTRY_ID] [numeric] (18, 0) NULL,
[STEP_ID] [int] NULL,
[ACTION_ID] [int] NULL,
[OWNER] [nvarchar] (60) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[START_DATE] [datetime] NULL,
[DUE_DATE] [datetime] NULL,
[FINISH_DATE] [datetime] NULL,
[STATUS] [nvarchar] (60) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[CALLER] [nvarchar] (60) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OS_HISTORYSTEP] ADD CONSTRAINT [PK_OS_HISTORYSTEP] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [historystep_entryid] ON [dbo].[OS_HISTORYSTEP] ([ENTRY_ID]) ON [PRIMARY]
GO
