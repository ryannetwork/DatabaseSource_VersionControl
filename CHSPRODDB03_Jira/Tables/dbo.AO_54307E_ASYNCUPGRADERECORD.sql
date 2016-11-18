CREATE TABLE [dbo].[AO_54307E_ASYNCUPGRADERECORD]
(
[ACTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[CREATED_DATE] [datetime] NOT NULL,
[EXCEPTION] [ntext] COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ID] [int] NOT NULL IDENTITY(1, 1),
[MESSAGE] [ntext] COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[SERVICE_DESK_VERSION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[UPGRADE_TASK_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_54307E_ASYNCUPGRADERECORD] ADD CONSTRAINT [pk_AO_54307E_ASYNCUPGRADERECORD_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
