CREATE TABLE [dbo].[CONTENT]
(
[CONTENTID] [numeric] (19, 0) NOT NULL,
[CONTENTTYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NOT NULL,
[HIBERNATEVERSION] [int] NOT NULL CONSTRAINT [DF__CONTENT__HIBERNA__3CBF0154] DEFAULT ((0)),
[TITLE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[LOWERTITLE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[VERSION] [int] NULL,
[CREATOR] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[CREATIONDATE] [datetime] NULL,
[LASTMODIFIER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[LASTMODDATE] [datetime] NULL,
[VERSIONCOMMENT] [ntext] COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[PREVVER] [numeric] (19, 0) NULL,
[CONTENT_STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[PAGEID] [numeric] (19, 0) NULL,
[SPACEID] [numeric] (19, 0) NULL,
[CHILD_POSITION] [int] NULL,
[PARENTID] [numeric] (19, 0) NULL,
[MESSAGEID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[PLUGINKEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[PLUGINVER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[PARENTCCID] [numeric] (19, 0) NULL,
[DRAFTPAGEID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[DRAFTSPACEKEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[DRAFTTYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[DRAFTPAGEVERSION] [int] NULL,
[PARENTCOMMENTID] [numeric] (19, 0) NULL,
[USERNAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CONTENT] ADD CONSTRAINT [PK__CONTENT__1317CAA120875761] PRIMARY KEY CLUSTERED  ([CONTENTID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_status_idx] ON [dbo].[CONTENT] ([CONTENT_STATUS]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_contenttype_idx] ON [dbo].[CONTENT] ([CONTENTTYPE]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_creator_idx] ON [dbo].[CONTENT] ([CREATOR]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_draftpageid_idx] ON [dbo].[CONTENT] ([DRAFTPAGEID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_drafttype_idx] ON [dbo].[CONTENT] ([DRAFTTYPE]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_lastmodifier_idx] ON [dbo].[CONTENT] ([LASTMODIFIER]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_ltitle_idx] ON [dbo].[CONTENT] ([LOWERTITLE]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_messageid_idx] ON [dbo].[CONTENT] ([MESSAGEID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_pageid_idx] ON [dbo].[CONTENT] ([PAGEID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_parentccid_idx] ON [dbo].[CONTENT] ([PARENTCCID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_parentcommid_idx] ON [dbo].[CONTENT] ([PARENTCOMMENTID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_parentid_idx] ON [dbo].[CONTENT] ([PARENTID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_prevver_idx] ON [dbo].[CONTENT] ([PREVVER]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_spaceid_idx] ON [dbo].[CONTENT] ([SPACEID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_si_ct_pv_cs_cd_idx] ON [dbo].[CONTENT] ([SPACEID], [CONTENTTYPE], [PREVVER], [CONTENT_STATUS], [CREATIONDATE]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_title_idx] ON [dbo].[CONTENT] ([TITLE]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [c_username_idx] ON [dbo].[CONTENT] ([USERNAME]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CONTENT] ADD CONSTRAINT [FK_CONTENT_CREATOR] FOREIGN KEY ([CREATOR]) REFERENCES [dbo].[user_mapping] ([user_key])
GO
ALTER TABLE [dbo].[CONTENT] ADD CONSTRAINT [FK_CONTENT_LASTMODIFIER] FOREIGN KEY ([LASTMODIFIER]) REFERENCES [dbo].[user_mapping] ([user_key])
GO
ALTER TABLE [dbo].[CONTENT] ADD CONSTRAINT [FK_CONTENT_USERNAME] FOREIGN KEY ([USERNAME]) REFERENCES [dbo].[user_mapping] ([user_key])
GO
ALTER TABLE [dbo].[CONTENT] ADD CONSTRAINT [FK6382C05917D4A070] FOREIGN KEY ([PREVVER]) REFERENCES [dbo].[CONTENT] ([CONTENTID])
GO
ALTER TABLE [dbo].[CONTENT] ADD CONSTRAINT [FK6382C05974B18345] FOREIGN KEY ([PARENTID]) REFERENCES [dbo].[CONTENT] ([CONTENTID])
GO
ALTER TABLE [dbo].[CONTENT] ADD CONSTRAINT [FK6382C0598C38FBEA] FOREIGN KEY ([PAGEID]) REFERENCES [dbo].[CONTENT] ([CONTENTID])
GO
ALTER TABLE [dbo].[CONTENT] ADD CONSTRAINT [FK6382C059B2DC6081] FOREIGN KEY ([SPACEID]) REFERENCES [dbo].[SPACES] ([SPACEID])
GO
ALTER TABLE [dbo].[CONTENT] ADD CONSTRAINT [FK6382C059B97E9230] FOREIGN KEY ([PARENTCOMMENTID]) REFERENCES [dbo].[CONTENT] ([CONTENTID])
GO
ALTER TABLE [dbo].[CONTENT] ADD CONSTRAINT [FK6382C059E5B1125] FOREIGN KEY ([PARENTCCID]) REFERENCES [dbo].[CONTENT] ([CONTENTID])
GO