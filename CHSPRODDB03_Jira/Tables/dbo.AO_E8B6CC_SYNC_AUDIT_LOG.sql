CREATE TABLE [dbo].[AO_E8B6CC_SYNC_AUDIT_LOG]
(
[END_DATE] [datetime] NULL,
[EXC_TRACE] [ntext] COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[FIRST_REQUEST_DATE] [datetime] NULL,
[FLIGHT_TIME_MS] [int] NULL CONSTRAINT [df_AO_E8B6CC_SYNC_AUDIT_LOG_FLIGHT_TIME_MS] DEFAULT ((0)),
[ID] [int] NOT NULL IDENTITY(1, 1),
[NUM_REQUESTS] [int] NULL CONSTRAINT [df_AO_E8B6CC_SYNC_AUDIT_LOG_NUM_REQUESTS] DEFAULT ((0)),
[REPO_ID] [int] NULL CONSTRAINT [df_AO_E8B6CC_SYNC_AUDIT_LOG_REPO_ID] DEFAULT ((0)),
[START_DATE] [datetime] NULL,
[SYNC_STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[SYNC_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[TOTAL_ERRORS] [int] NULL CONSTRAINT [df_AO_E8B6CC_SYNC_AUDIT_LOG_TOTAL_ERRORS] DEFAULT ((0))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_E8B6CC_SYNC_AUDIT_LOG] ADD CONSTRAINT [pk_AO_E8B6CC_SYNC_AUDIT_LOG_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_e8b6cc_syn203792807] ON [dbo].[AO_E8B6CC_SYNC_AUDIT_LOG] ([REPO_ID]) ON [PRIMARY]
GO
