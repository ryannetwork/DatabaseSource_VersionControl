CREATE TABLE [dbo].[tblMin]
(
[Min_PK] [smallint] NOT NULL,
[Min_Text] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblMin] ADD CONSTRAINT [PK_tblMin] PRIMARY KEY CLUSTERED  ([Min_PK]) ON [PRIMARY]
GO
