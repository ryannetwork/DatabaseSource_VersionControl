CREATE TABLE [dbo].[AO_5FB9D7_AOHIP_CHAT_LINK]
(
[ADDON_TOKEN_EXPIRY] [datetime] NULL,
[API_URL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[CONNECT_DESCRIPTOR] [ntext] COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[GROUP_ID] [int] NULL CONSTRAINT [df_AO_5FB9D7_AOHIP_CHAT_LINK_GROUP_ID] DEFAULT ((0)),
[GROUP_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[ID] [int] NOT NULL IDENTITY(1, 1),
[OAUTH_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[SECRET_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[SYSTEM_PASSWORD] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[SYSTEM_TOKEN_EXPIRY] [datetime] NULL,
[SYSTEM_USER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[SYSTEM_USER_TOKEN] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL,
[TOKEN] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CS_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_5FB9D7_AOHIP_CHAT_LINK] ADD CONSTRAINT [pk_AO_5FB9D7_AOHIP_CHAT_LINK_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
