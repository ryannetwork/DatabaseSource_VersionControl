CREATE TABLE [dbo].[AO_56464C_APPROVAL]
(
[APPROVE_CONDITION_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[APPROVE_CONDITION_VALUE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[COMPLETED_DATE] [bigint] NULL,
[CREATED_DATE] [bigint] NOT NULL,
[DECISION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ID] [int] NOT NULL IDENTITY(1, 1),
[ISSUE_ID] [bigint] NOT NULL,
[NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[STATUS_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_56464C_APPROVAL] ADD CONSTRAINT [pk_AO_56464C_APPROVAL_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_56464c_app107561580] ON [dbo].[AO_56464C_APPROVAL] ([ISSUE_ID]) ON [PRIMARY]
GO
