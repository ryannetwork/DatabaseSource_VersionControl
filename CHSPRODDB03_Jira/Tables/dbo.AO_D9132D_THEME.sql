CREATE TABLE [dbo].[AO_D9132D_THEME]
(
[COLOR] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[SHARED] [bit] NULL,
[TITLE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_D9132D_THEME] ADD CONSTRAINT [pk_AO_D9132D_THEME_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_d9132d_theme_shared] ON [dbo].[AO_D9132D_THEME] ([SHARED]) ON [PRIMARY]
GO
