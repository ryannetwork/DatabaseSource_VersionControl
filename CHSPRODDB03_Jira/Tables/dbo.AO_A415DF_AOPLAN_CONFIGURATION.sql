CREATE TABLE [dbo].[AO_A415DF_AOPLAN_CONFIGURATION]
(
[AOPLAN_ID] [int] NULL,
[AOPROGRESS_TRACKER_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[AOWEEKDAY_CONFIG] [int] NULL,
[BACKLOG_RECORD_LIMIT] [int] NULL,
[DEFAULT_EPIC_ESTIMATE] [float] NULL,
[DEFAULT_STORY_ESTIMATE] [float] NULL,
[EPIC_SYNC_MODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[GLOBAL_DEFAULT_VELOCITY] [float] NULL,
[GLOBAL_SPRINT_LENGTH] [int] NULL,
[HAS_SPRINT_CONSTRAINT] [bit] NULL,
[HEURISTIC_THRESHOLD] [int] NULL,
[HOURS_PER_DAY] [float] NULL,
[ID_OTHER] [int] NOT NULL IDENTITY(1, 1),
[IMPORT_LIMIT] [int] NULL,
[INITIATIVE_SYNC_MODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[LINKING_MODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[MAX_RESOURCES_PER_STORY] [bigint] NULL,
[MIN_LOAD_UNSTR_EPICS] [bigint] NULL,
[PLANNING_UNIT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[PROG_CMPLT_IF_RSLVD] [bit] NULL,
[PROG_DSPL_UNEST_RTIO] [bit] NULL,
[PROG_FIELD_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[PROG_STRY_SUB_TASK_MODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[SPRINT_EXCEEDED_WARN] [bit] NULL,
[STORY_SYNC_MODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[STRICT_STAGE_DIVISION] [bit] NULL,
[SUGGEST_REPL_ESTIMATES] [bit] NULL,
[SYNC_DESCRIPTION] [bit] NULL,
[SYNC_EPICS] [bit] NULL,
[SYNC_ESTIMATES] [bit] NULL,
[SYNC_INITIATIVES] [bit] NULL,
[SYNC_START_ENABLED] [bit] NULL,
[SYNC_STORIES] [bit] NULL,
[SYNC_SUMMARY] [bit] NULL,
[TEMPLATE_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_A415DF_AOPLAN_CONFIGURATION] ADD CONSTRAINT [pk_AO_A415DF_AOPLAN_CONFIGURATION_ID_OTHER] PRIMARY KEY CLUSTERED  ([ID_OTHER]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_a415df_aop485454964] ON [dbo].[AO_A415DF_AOPLAN_CONFIGURATION] ([AOPLAN_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_A415DF_AOPLAN_CONFIGURATION] ADD CONSTRAINT [fk_ao_a415df_aoplan_configuration_aoplan_id] FOREIGN KEY ([AOPLAN_ID]) REFERENCES [dbo].[AO_A415DF_AOPLAN] ([ID_OTHER])
GO
