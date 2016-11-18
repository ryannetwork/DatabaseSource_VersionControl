CREATE TABLE [dbo].[AO_54307E_SERVICEDESK]
(
[CREATED_BY_USER_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[CREATED_DATE] [datetime] NULL,
[CREATED_WITH_EMPTY_PROJECT] [bit] NULL,
[DISABLED] [bit] NULL,
[ID] [int] NOT NULL IDENTITY(1, 1),
[LEGACY_TRANSITION_DISABLED] [bit] NULL,
[OPEN_CUSTOMER_ACCESS] [int] NULL,
[PROJECT_ID] [bigint] NULL,
[PROJECT_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL CONSTRAINT [df_AO_54307E_SERVICEDESK_PROJECT_KEY] DEFAULT ('N/A'),
[PUBLIC_SIGNUP] [int] NULL,
[VERSION_CREATED_AT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_54307E_SERVICEDESK] ADD CONSTRAINT [pk_AO_54307E_SERVICEDESK_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_54307e_ser1130618333] ON [dbo].[AO_54307E_SERVICEDESK] ([PROJECT_ID]) ON [PRIMARY]
GO
