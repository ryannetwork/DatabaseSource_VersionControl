CREATE TABLE [dbo].[AO_A415DF_AOAVAILABILITY]
(
[AORESOURCE_ID] [int] NULL,
[AVAILABILITY] [float] NULL,
[DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[DETAILS] [ntext] COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[END_DATE] [bigint] NULL,
[ID_OTHER] [int] NOT NULL IDENTITY(1, 1),
[ORDER_RANGE_IDENTIFIER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[SORT_ORDER] [bigint] NULL,
[START_DATE] [bigint] NULL,
[TITLE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[VERSION] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_A415DF_AOAVAILABILITY] ADD CONSTRAINT [pk_AO_A415DF_AOAVAILABILITY_ID_OTHER] PRIMARY KEY CLUSTERED  ([ID_OTHER]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_a415df_aoa274205782] ON [dbo].[AO_A415DF_AOAVAILABILITY] ([AORESOURCE_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_A415DF_AOAVAILABILITY] ADD CONSTRAINT [fk_ao_a415df_aoavailability_aoresource_id] FOREIGN KEY ([AORESOURCE_ID]) REFERENCES [dbo].[AO_A415DF_AORESOURCE] ([ID_OTHER])
GO
