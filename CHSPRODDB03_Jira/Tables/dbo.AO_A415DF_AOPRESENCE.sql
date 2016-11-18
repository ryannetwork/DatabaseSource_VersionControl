CREATE TABLE [dbo].[AO_A415DF_AOPRESENCE]
(
[AOPERSON_ID] [int] NULL,
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
ALTER TABLE [dbo].[AO_A415DF_AOPRESENCE] ADD CONSTRAINT [pk_AO_A415DF_AOPRESENCE_ID_OTHER] PRIMARY KEY CLUSTERED  ([ID_OTHER]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_a415df_aop1246856669] ON [dbo].[AO_A415DF_AOPRESENCE] ([AOPERSON_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_A415DF_AOPRESENCE] ADD CONSTRAINT [fk_ao_a415df_aopresence_aoperson_id] FOREIGN KEY ([AOPERSON_ID]) REFERENCES [dbo].[AO_A415DF_AOPERSON] ([ID_OTHER])
GO
