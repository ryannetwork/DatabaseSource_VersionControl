CREATE TABLE [dbo].[AO_60DB71_RANKABLEOBJECT]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_60DB71_RANKABLEOBJECT] ADD CONSTRAINT [pk_AO_60DB71_RANKABLEOBJECT_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
