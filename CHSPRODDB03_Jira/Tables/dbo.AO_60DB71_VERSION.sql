CREATE TABLE [dbo].[AO_60DB71_VERSION]
(
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[START_DATE] [bigint] NULL,
[VERSION_ID] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_60DB71_VERSION] ADD CONSTRAINT [pk_AO_60DB71_VERSION_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
