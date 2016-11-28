CREATE TABLE [dbo].[AO_D9132D_DISTRIBUTION]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[SCENARIO_ISSUE_ID] [bigint] NULL,
[SKILL_ITEM_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[WEIGHT] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_DISTRIBUTION] ADD CONSTRAINT [pk_AO_D9132D_DISTRIBUTION_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_dis1745341529] ON [dbo].[AO_D9132D_DISTRIBUTION] ([SCENARIO_ISSUE_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_dis912936150] ON [dbo].[AO_D9132D_DISTRIBUTION] ([SKILL_ITEM_KEY]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_DISTRIBUTION] ADD CONSTRAINT [fk_ao_d9132d_distribution_scenario_issue_id] FOREIGN KEY ([SCENARIO_ISSUE_ID]) REFERENCES [dbo].[AO_D9132D_SCENARIO_ISSUES] ([ID])
GO