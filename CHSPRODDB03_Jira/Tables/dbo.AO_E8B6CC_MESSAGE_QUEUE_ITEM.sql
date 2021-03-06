CREATE TABLE [dbo].[AO_E8B6CC_MESSAGE_QUEUE_ITEM]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[LAST_FAILED] [datetime] NULL,
[MESSAGE_ID] [int] NOT NULL,
[QUEUE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[RETRIES_COUNT] [int] NOT NULL CONSTRAINT [df_AO_E8B6CC_MESSAGE_QUEUE_ITEM_RETRIES_COUNT] DEFAULT ((0)),
[STATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[STATE_INFO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_E8B6CC_MESSAGE_QUEUE_ITEM] ADD CONSTRAINT [pk_AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_e8b6cc_mes344532677] ON [dbo].[AO_E8B6CC_MESSAGE_QUEUE_ITEM] ([MESSAGE_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_e8b6cc_mes60959905] ON [dbo].[AO_E8B6CC_MESSAGE_QUEUE_ITEM] ([QUEUE]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_e8b6cc_mes59146529] ON [dbo].[AO_E8B6CC_MESSAGE_QUEUE_ITEM] ([STATE]) ON [PRIMARY]
GO
