CREATE TABLE [dbo].[AO_54307E_ORGANIZATION_MEMBER]
(
[DEFAULT_ORGANIZATION] [bit] NOT NULL CONSTRAINT [df_AO_54307E_ORGANIZATION_MEMBER_DEFAULT_ORGANIZATION] DEFAULT ((0)),
[ID] [int] NOT NULL IDENTITY(1, 1),
[ORGANIZATION_ID] [int] NULL,
[USER_KEY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_54307E_ORGANIZATION_MEMBER] ADD CONSTRAINT [pk_AO_54307E_ORGANIZATION_MEMBER_ID] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_54307e_org1628402717] ON [dbo].[AO_54307E_ORGANIZATION_MEMBER] ([ORGANIZATION_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [index_ao_54307e_org724569035] ON [dbo].[AO_54307E_ORGANIZATION_MEMBER] ([USER_KEY]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AO_54307E_ORGANIZATION_MEMBER] ADD CONSTRAINT [fk_ao_54307e_organization_member_organization_id] FOREIGN KEY ([ORGANIZATION_ID]) REFERENCES [dbo].[AO_54307E_ORGANIZATION] ([ID])
GO
