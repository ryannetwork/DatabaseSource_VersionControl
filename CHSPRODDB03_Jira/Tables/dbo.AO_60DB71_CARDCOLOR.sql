CREATE TABLE [dbo].[AO_60DB71_CARDCOLOR]
(
[COLOR] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[POS] [int] NOT NULL CONSTRAINT [df_AO_60DB71_CARDCOLOR_POS] DEFAULT ((0)),
[RAPID_VIEW_ID] [bigint] NOT NULL,
[STRATEGY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[VAL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_60DB71_CARDCOLOR] ADD CONSTRAINT [pk_AO_60DB71_CARDCOLOR_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_60db71_car2031978979] ON [dbo].[AO_60DB71_CARDCOLOR] ([RAPID_VIEW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_60DB71_CARDCOLOR] ADD CONSTRAINT [fk_ao_60db71_cardcolor_rapid_view_id] FOREIGN KEY ([RAPID_VIEW_ID]) REFERENCES [dbo].[AO_60DB71_RAPIDVIEW] ([ID])
GO
