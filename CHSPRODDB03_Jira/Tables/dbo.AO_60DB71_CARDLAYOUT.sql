CREATE TABLE [dbo].[AO_60DB71_CARDLAYOUT]
(
[FIELD_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[MODE_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[POS] [int] NOT NULL CONSTRAINT [df_AO_60DB71_CARDLAYOUT_POS] DEFAULT ((0)),
[RAPID_VIEW_ID] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_60DB71_CARDLAYOUT] ADD CONSTRAINT [pk_AO_60DB71_CARDLAYOUT_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_60db71_car149237770] ON [dbo].[AO_60DB71_CARDLAYOUT] ([RAPID_VIEW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_60DB71_CARDLAYOUT] ADD CONSTRAINT [fk_ao_60db71_cardlayout_rapid_view_id] FOREIGN KEY ([RAPID_VIEW_ID]) REFERENCES [dbo].[AO_60DB71_RAPIDVIEW] ([ID])
GO
