CREATE TABLE [dbo].[tblProvider]
(
[Provider_PK] [bigint] NOT NULL IDENTITY(1, 1),
[ProviderMaster_PK] [bigint] NULL,
[ProviderOffice_PK] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblProvider] ADD CONSTRAINT [PK_tblProvider_1] PRIMARY KEY CLUSTERED  ([Provider_PK]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ProviderPK_2] ON [dbo].[tblProvider] ([Provider_PK]) INCLUDE ([ProviderOffice_PK]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ProviderPK] ON [dbo].[tblProvider] ([Provider_PK], [ProviderOffice_PK]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tblProvider_1] ON [dbo].[tblProvider] ([ProviderMaster_PK]) ON [PRIMARY]
GO
