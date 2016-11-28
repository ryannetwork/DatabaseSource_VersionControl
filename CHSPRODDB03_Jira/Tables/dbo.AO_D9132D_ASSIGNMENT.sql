CREATE TABLE [dbo].[AO_D9132D_ASSIGNMENT]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[INTERVAL_END] [bigint] NOT NULL,
[INTERVAL_START] [bigint] NOT NULL,
[ISSUE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[PLAN] [bigint] NOT NULL,
[PROJECT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[RESOURCE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[SKILL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[SOLUTION_ID] [bigint] NULL,
[SPRINT_INDEX] [int] NOT NULL,
[STAGE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[TEAM] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[VERSION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[WORKLOAD] [float] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_ASSIGNMENT] ADD CONSTRAINT [pk_AO_D9132D_ASSIGNMENT_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_ass1995881407] ON [dbo].[AO_D9132D_ASSIGNMENT] ([INTERVAL_END]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_ass1821457992] ON [dbo].[AO_D9132D_ASSIGNMENT] ([INTERVAL_START]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_ass1897231097] ON [dbo].[AO_D9132D_ASSIGNMENT] ([ISSUE]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_ass199949577] ON [dbo].[AO_D9132D_ASSIGNMENT] ([PLAN]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_ass1897285102] ON [dbo].[AO_D9132D_ASSIGNMENT] ([RESOURCE]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_ass1284224961] ON [dbo].[AO_D9132D_ASSIGNMENT] ([SOLUTION_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_ass200062013] ON [dbo].[AO_D9132D_ASSIGNMENT] ([TEAM]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_ass423812856] ON [dbo].[AO_D9132D_ASSIGNMENT] ([VERSION]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_ASSIGNMENT] ADD CONSTRAINT [fk_ao_d9132d_assignment_solution_id] FOREIGN KEY ([SOLUTION_ID]) REFERENCES [dbo].[AO_D9132D_SOLUTION] ([ID])
GO