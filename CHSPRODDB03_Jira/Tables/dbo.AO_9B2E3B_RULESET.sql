CREATE TABLE [dbo].[AO_9B2E3B_RULESET]
(
[ACTIVE_REVISION_ID] [bigint] NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_9B2E3B_RULESET] ADD CONSTRAINT [pk_AO_9B2E3B_RULESET_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
