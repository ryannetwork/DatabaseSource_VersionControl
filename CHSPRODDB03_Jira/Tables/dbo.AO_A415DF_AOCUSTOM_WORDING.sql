CREATE TABLE [dbo].[AO_A415DF_AOCUSTOM_WORDING]
(
[ID_OTHER] [int] NOT NULL IDENTITY(1, 1),
[WORD_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[WORD_VALUE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_A415DF_AOCUSTOM_WORDING] ADD CONSTRAINT [pk_AO_A415DF_AOCUSTOM_WORDING_ID_OTHER] PRIMARY KEY CLUSTERED  ([ID_OTHER]) ON [PRIMARY]
GO
