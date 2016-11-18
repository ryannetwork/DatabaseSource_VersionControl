CREATE TABLE [dbo].[AO_88263F_READ_NOTIFICATIONS]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[IS_SNOOZED] [bit] NULL,
[NOTIFICATION_ID] [int] NOT NULL,
[SNOOZE_COUNT] [int] NULL,
[SNOOZE_DATE] [datetime] NULL,
[USER_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_88263F_READ_NOTIFICATIONS] ADD CONSTRAINT [pk_AO_88263F_READ_NOTIFICATIONS_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
