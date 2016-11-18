CREATE TABLE [dbo].[AO_E8B6CC_PR_TO_COMMIT]
(
[COMMIT_ID] [int] NOT NULL,
[DOMAIN_ID] [int] NOT NULL CONSTRAINT [df_AO_E8B6CC_PR_TO_COMMIT_DOMAIN_ID] DEFAULT ((0)),
[ID] [int] NOT NULL IDENTITY(1, 1),
[REQUEST_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_E8B6CC_PR_TO_COMMIT] ADD CONSTRAINT [pk_AO_E8B6CC_PR_TO_COMMIT_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_e8b6cc_pr_1458633226] ON [dbo].[AO_E8B6CC_PR_TO_COMMIT] ([COMMIT_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_e8b6cc_pr_685151049] ON [dbo].[AO_E8B6CC_PR_TO_COMMIT] ([DOMAIN_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_e8b6cc_pr_1045528152] ON [dbo].[AO_E8B6CC_PR_TO_COMMIT] ([REQUEST_ID]) ON [PRIMARY]
GO
