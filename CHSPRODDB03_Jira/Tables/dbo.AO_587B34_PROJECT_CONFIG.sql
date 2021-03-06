CREATE TABLE [dbo].[AO_587B34_PROJECT_CONFIG]
(
[CONFIGURATION_GROUP_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[ID] [int] NOT NULL IDENTITY(1, 1),
[NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[NAME_UNIQUE_CONSTRAINT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[PROJECT_ID] [bigint] NOT NULL CONSTRAINT [df_AO_587B34_PROJECT_CONFIG_PROJECT_ID] DEFAULT ((0)),
[ROOM_ID] [bigint] NOT NULL CONSTRAINT [df_AO_587B34_PROJECT_CONFIG_ROOM_ID] DEFAULT ((0)),
[VALUE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_587B34_PROJECT_CONFIG] ADD CONSTRAINT [pk_AO_587B34_PROJECT_CONFIG_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_587b34_pro193829489] ON [dbo].[AO_587B34_PROJECT_CONFIG] ([CONFIGURATION_GROUP_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_587b34_pro2115480362] ON [dbo].[AO_587B34_PROJECT_CONFIG] ([NAME]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_587B34_PROJECT_CONFIG] ADD CONSTRAINT [U_AO_587B34_PROJECT2070954277] UNIQUE NONCLUSTERED  ([NAME_UNIQUE_CONSTRAINT]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_587b34_pro2093917684] ON [dbo].[AO_587B34_PROJECT_CONFIG] ([PROJECT_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_587b34_pro1732672724] ON [dbo].[AO_587B34_PROJECT_CONFIG] ([ROOM_ID]) ON [PRIMARY]
GO
