CREATE TABLE [dbo].[AO_D9132D_SCENARIO_SKILL]
(
[ADD_TO_PLAN] [bit] NULL,
[C_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[ITEM_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[LAST_CHANGE_TIMESTAMP] [bigint] NULL,
[LAST_CHANGE_USER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[SCENARIO_ID] [bigint] NULL,
[SCENARIO_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[STAGE_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[STAGE_ID_CHANGED] [bit] NULL,
[TITLE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[TITLE_CHANGED] [bit] NULL,
[WEIGHT] [float] NULL,
[WEIGHT_CHANGED] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_SKILL] ADD CONSTRAINT [pk_AO_D9132D_SCENARIO_SKILL_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_SKILL] ADD CONSTRAINT [U_AO_D9132D_SCENARI106138549] UNIQUE NONCLUSTERED  ([C_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1271866466] ON [dbo].[AO_D9132D_SCENARIO_SKILL] ([ITEM_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce2005427167] ON [dbo].[AO_D9132D_SCENARIO_SKILL] ([SCENARIO_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1224456962] ON [dbo].[AO_D9132D_SCENARIO_SKILL] ([SCENARIO_TYPE]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_SKILL] ADD CONSTRAINT [fk_ao_d9132d_scenario_skill_scenario_id] FOREIGN KEY ([SCENARIO_ID]) REFERENCES [dbo].[AO_D9132D_SCENARIO] ([ID])
GO
