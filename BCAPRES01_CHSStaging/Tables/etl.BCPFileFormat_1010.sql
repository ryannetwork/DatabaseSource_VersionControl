CREATE TABLE [etl].[BCPFileFormat_1010]
(
[txt] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rowid] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [etl].[BCPFileFormat_1010] ADD CONSTRAINT [BCPFileFormat_1010_PK] PRIMARY KEY CLUSTERED  ([Rowid]) ON [PRIMARY]
GO