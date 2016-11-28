CREATE TABLE [dbo].[AO_9B2E3B_EXEC_RULE_MSG_ITEM]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[RULE_EXECUTION_ID] [bigint] NOT NULL,
[RULE_MESSAGE_KEY] [nvarchar] (127) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[RULE_MESSAGE_VALUE] [ntext] COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_9B2E3B_EXEC_RULE_MSG_ITEM] ADD CONSTRAINT [pk_AO_9B2E3B_EXEC_RULE_MSG_ITEM_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_9b2e3b_exe1939877636] ON [dbo].[AO_9B2E3B_EXEC_RULE_MSG_ITEM] ([RULE_EXECUTION_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_9B2E3B_EXEC_RULE_MSG_ITEM] ADD CONSTRAINT [fk_ao_9b2e3b_exec_rule_msg_item_rule_execution_id] FOREIGN KEY ([RULE_EXECUTION_ID]) REFERENCES [dbo].[AO_9B2E3B_RULE_EXECUTION] ([ID])
GO