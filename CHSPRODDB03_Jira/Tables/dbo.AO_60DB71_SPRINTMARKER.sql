CREATE TABLE [dbo].[AO_60DB71_SPRINTMARKER]
(
[ID] [bigint] NOT NULL,
[MARKER_CONTEXT] [bigint] NULL,
[NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_60DB71_SPRINTMARKER] ADD CONSTRAINT [pk_AO_60DB71_SPRINTMARKER_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
