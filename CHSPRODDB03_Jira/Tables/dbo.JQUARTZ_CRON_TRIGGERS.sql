CREATE TABLE [dbo].[JQUARTZ_CRON_TRIGGERS]
(
[SCHED_NAME] [varchar] (120) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[TRIGGER_NAME] [varchar] (200) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[TRIGGER_GROUP] [varchar] (200) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[CRON_EXPRESSION] [varchar] (120) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[TIME_ZONE_ID] [varchar] (80) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JQUARTZ_CRON_TRIGGERS] ADD CONSTRAINT [PK_JQUARTZ_CRON_TRIGGERS] PRIMARY KEY CLUSTERED  ([TRIGGER_NAME], [TRIGGER_GROUP]) ON [PRIMARY]
GO
