CREATE TABLE [dbo].[AO_60DB71_COLUMNSTATUS]
(
[COLUMN_ID] [bigint] NOT NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[POS] [int] NOT NULL CONSTRAINT [df_AO_60DB71_COLUMNSTATUS_POS] DEFAULT ((0)),
[STATUS_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_60DB71_COLUMNSTATUS] ADD CONSTRAINT [pk_AO_60DB71_COLUMNSTATUS_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_60db71_col1856623434] ON [dbo].[AO_60DB71_COLUMNSTATUS] ([COLUMN_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_60DB71_COLUMNSTATUS] ADD CONSTRAINT [fk_ao_60db71_columnstatus_column_id] FOREIGN KEY ([COLUMN_ID]) REFERENCES [dbo].[AO_60DB71_COLUMN] ([ID])
GO
