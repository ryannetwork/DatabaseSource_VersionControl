CREATE TABLE [dbo].[AO_0201F0_KB_VIEW_AGGR]
(
[COUNT] [bigint] NULL,
[ID] [bigint] NOT NULL IDENTITY(1, 1),
[SERVICE_DESK_ID] [bigint] NULL,
[START_TIME] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_0201F0_KB_VIEW_AGGR] ADD CONSTRAINT [pk_AO_0201F0_KB_VIEW_AGGR_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
