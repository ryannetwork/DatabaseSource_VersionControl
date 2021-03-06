CREATE TABLE [dbo].[AO_7CDE43_RECIPIENT]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[INDIVIDUAL] [bit] NULL,
[NOTIFICATION_ID] [int] NULL,
[PARAM_DISPLAY] [ntext] COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[PARAM_VALUE] [ntext] COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[SERVER_ID] [int] NULL CONSTRAINT [df_AO_7CDE43_RECIPIENT_SERVER_ID] DEFAULT ((0)),
[TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_7CDE43_RECIPIENT] ADD CONSTRAINT [pk_AO_7CDE43_RECIPIENT_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_7cde43_rec1271577318] ON [dbo].[AO_7CDE43_RECIPIENT] ([NOTIFICATION_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_7CDE43_RECIPIENT] ADD CONSTRAINT [fk_ao_7cde43_recipient_notification_id] FOREIGN KEY ([NOTIFICATION_ID]) REFERENCES [dbo].[AO_7CDE43_NOTIFICATION] ([ID])
GO
