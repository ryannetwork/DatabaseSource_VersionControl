CREATE TABLE [dbo].[AO_D9132D_SCENARIO_CHANGES]
(
[COUNTER] [bigint] NOT NULL,
[C_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[SCENARIO_ID] [bigint] NULL,
[T_TYPE] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_CHANGES] ADD CONSTRAINT [pk_AO_D9132D_SCENARIO_CHANGES_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_CHANGES] ADD CONSTRAINT [U_AO_D9132D_SCENARI577680729] UNIQUE NONCLUSTERED  ([C_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce318880623] ON [dbo].[AO_D9132D_SCENARIO_CHANGES] ([SCENARIO_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1006164830] ON [dbo].[AO_D9132D_SCENARIO_CHANGES] ([T_TYPE]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO_CHANGES] ADD CONSTRAINT [fk_ao_d9132d_scenario_changes_scenario_id] FOREIGN KEY ([SCENARIO_ID]) REFERENCES [dbo].[AO_D9132D_SCENARIO] ([ID])
GO