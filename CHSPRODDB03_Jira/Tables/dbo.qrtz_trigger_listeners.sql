CREATE TABLE [dbo].[qrtz_trigger_listeners]
(
[ID] [numeric] (18, 0) NOT NULL,
[trigger_id] [numeric] (18, 0) NULL,
[TRIGGER_LISTENER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[qrtz_trigger_listeners] ADD CONSTRAINT [PK_qrtz_trigger_listeners] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
