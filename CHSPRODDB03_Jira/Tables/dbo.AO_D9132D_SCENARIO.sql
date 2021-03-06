CREATE TABLE [dbo].[AO_D9132D_SCENARIO]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[PLAN_ID] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO] ADD CONSTRAINT [pk_AO_D9132D_SCENARIO_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_sce1223631444] ON [dbo].[AO_D9132D_SCENARIO] ([PLAN_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_SCENARIO] ADD CONSTRAINT [fk_ao_d9132d_scenario_plan_id] FOREIGN KEY ([PLAN_ID]) REFERENCES [dbo].[AO_D9132D_PLAN] ([ID])
GO
