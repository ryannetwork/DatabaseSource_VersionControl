CREATE TABLE [dbo].[tblDay]
(
[Day_PK] [tinyint] NOT NULL,
[Day_Name] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblDay] ADD CONSTRAINT [PK_tblDay] PRIMARY KEY CLUSTERED  ([Day_PK]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
