CREATE TABLE [dbo].[AO_9B2E3B_IF_THEN]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[ORDINAL] [int] NOT NULL,
[RULE_ID] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_9B2E3B_IF_THEN] ADD CONSTRAINT [pk_AO_9B2E3B_IF_THEN_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_9b2e3b_if_1335518770] ON [dbo].[AO_9B2E3B_IF_THEN] ([RULE_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_9B2E3B_IF_THEN] ADD CONSTRAINT [fk_ao_9b2e3b_if_then_rule_id] FOREIGN KEY ([RULE_ID]) REFERENCES [dbo].[AO_9B2E3B_RULE] ([ID])
GO
