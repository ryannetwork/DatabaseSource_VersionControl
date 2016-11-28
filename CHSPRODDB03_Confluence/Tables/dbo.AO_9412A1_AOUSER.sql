CREATE TABLE [dbo].[AO_9412A1_AOUSER]
(
[CREATED] [datetime] NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[LAST_READ_NOTIFICATION_ID] [bigint] NULL CONSTRAINT [df_AO_9412A1_AOUSER_LAST_READ_NOTIFICATION_ID] DEFAULT ((0)),
[TASK_ORDERING] [ntext] COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[UPDATED] [datetime] NULL,
[USERNAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_9412A1_AOUSER] ADD CONSTRAINT [pk_AO_9412A1_AOUSER_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_9412A1_AOUSER] ADD CONSTRAINT [U_AO_9412A1_AOUSER_USERNAME] UNIQUE NONCLUSTERED  ([USERNAME]) ON [PRIMARY]
GO