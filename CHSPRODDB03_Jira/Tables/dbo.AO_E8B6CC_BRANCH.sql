CREATE TABLE [dbo].[AO_E8B6CC_BRANCH]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[REPOSITORY_ID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_E8B6CC_BRANCH] ADD CONSTRAINT [pk_AO_E8B6CC_BRANCH_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_e8b6cc_bra405461593] ON [dbo].[AO_E8B6CC_BRANCH] ([REPOSITORY_ID]) ON [PRIMARY]
GO
