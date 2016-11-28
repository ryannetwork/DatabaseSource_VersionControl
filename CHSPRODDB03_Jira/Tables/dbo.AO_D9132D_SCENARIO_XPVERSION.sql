CREATE TABLE [dbo].[AO_D9132D_SCENARIO_XPVERSION]
(
[C_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[ITEM_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[LAST_CHANGE_TIMESTAMP] [bigint] NULL,
[LAST_CHANGE_USER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[NAME_CHANGED] [bit] NULL,
[SCENARIO_ID] [bigint] NULL,
[SCENARIO_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_XPVERSION] ADD CONSTRAINT [pk_AO_D9132D_SCENARIO_XPVERSION_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_XPVERSION] ADD CONSTRAINT [U_AO_D9132D_SCENARI913320196] UNIQUE NONCLUSTERED  ([C_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce113715567] ON [dbo].[AO_D9132D_SCENARIO_XPVERSION] ([ITEM_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce949090414] ON [dbo].[AO_D9132D_SCENARIO_XPVERSION] ([SCENARIO_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1543172557] ON [dbo].[AO_D9132D_SCENARIO_XPVERSION] ([SCENARIO_TYPE]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_XPVERSION] ADD CONSTRAINT [fk_ao_d9132d_scenario_xpversion_scenario_id] FOREIGN KEY ([SCENARIO_ID]) REFERENCES [dbo].[AO_D9132D_SCENARIO] ([ID])
GO