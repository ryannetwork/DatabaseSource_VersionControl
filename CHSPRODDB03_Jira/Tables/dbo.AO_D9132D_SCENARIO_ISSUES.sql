CREATE TABLE [dbo].[AO_D9132D_SCENARIO_ISSUES]
(
[COMPONENTS_CHANGED] [bit] NULL,
[C_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[DESCRIPTION] [ntext] COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[DESCRIPTION_CHANGED] [bit] NULL,
[DISTRIBUTION_CHANGED] [bit] NULL,
[EARLIEST_START] [bigint] NULL,
[EARLIEST_START_CHANGED] [bit] NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[ITEM_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[LABELS_CHANGED] [bit] NULL,
[LAST_CHANGE_TIMESTAMP] [bigint] NULL,
[LAST_CHANGE_USER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[LATER_RELEASE] [bit] NULL,
[LATER_RELEASE_CHANGED] [bit] NULL,
[PARENT_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[PARENT_ID_CHANGED] [bit] NULL,
[PROJECT_ID] [bigint] NULL,
[PROJECT_ID_CHANGED] [bit] NULL,
[RESOURCES_CHANGED] [bit] NULL,
[SCENARIO_ID] [bigint] NULL,
[SCENARIO_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[SPRINT_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[SPRINT_ID_CHANGED] [bit] NULL,
[STATUS_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[STATUS_ID_CHANGED] [bit] NULL,
[STORY_POINTS_ESTIMATE] [float] NULL,
[STORY_POINTS_ESTIMATE_CHANGED] [bit] NULL,
[TEAM_ID_CHANGED] [bit] NULL,
[TEAM_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[THEME_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[THEME_ID_CHANGED] [bit] NULL,
[TIME_ESTIMATE] [bigint] NULL,
[TIME_ESTIMATE_CHANGED] [bit] NULL,
[TITLE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[TITLE_CHANGED] [bit] NULL,
[TYPE_ID] [bigint] NULL,
[TYPE_ID_CHANGED] [bit] NULL,
[VERSION_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[VERSION_ID_CHANGED] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_ISSUES] ADD CONSTRAINT [pk_AO_D9132D_SCENARIO_ISSUES_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_ISSUES] ADD CONSTRAINT [U_AO_D9132D_SCENARI1142118530] UNIQUE NONCLUSTERED  ([C_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1017308037] ON [dbo].[AO_D9132D_SCENARIO_ISSUES] ([ITEM_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1554987896] ON [dbo].[AO_D9132D_SCENARIO_ISSUES] ([PARENT_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1609369417] ON [dbo].[AO_D9132D_SCENARIO_ISSUES] ([PROJECT_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce643340770] ON [dbo].[AO_D9132D_SCENARIO_ISSUES] ([SCENARIO_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce224459199] ON [dbo].[AO_D9132D_SCENARIO_ISSUES] ([SCENARIO_TYPE]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce2099451160] ON [dbo].[AO_D9132D_SCENARIO_ISSUES] ([SPRINT_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1400547264] ON [dbo].[AO_D9132D_SCENARIO_ISSUES] ([STATUS_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1086205799] ON [dbo].[AO_D9132D_SCENARIO_ISSUES] ([THEME_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce646807048] ON [dbo].[AO_D9132D_SCENARIO_ISSUES] ([TYPE_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1386125014] ON [dbo].[AO_D9132D_SCENARIO_ISSUES] ([VERSION_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_ISSUES] ADD CONSTRAINT [fk_ao_d9132d_scenario_issues_scenario_id] FOREIGN KEY ([SCENARIO_ID]) REFERENCES [dbo].[AO_D9132D_SCENARIO] ([ID])
GO
