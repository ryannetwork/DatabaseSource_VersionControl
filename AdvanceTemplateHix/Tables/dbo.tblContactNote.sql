CREATE TABLE [dbo].[tblContactNote]
(
[ContactNote_PK] [smallint] NOT NULL IDENTITY(1, 1),
[ContactNote_Text] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsSystem] [bit] NULL,
[sortOrder] [smallint] NULL,
[IsIssue] [bit] NULL,
[IsCNA] [bit] NULL,
[IsFollowup] [bit] NULL,
[Followup_days] [tinyint] NULL,
[IsActive] [bit] NULL,
[IsCopyCenter] [bit] NULL,
[IsRetro] [bit] NULL,
[IsProspective] [bit] NULL,
[IsDataIssue] [bit] NULL,
[AllowedAttempts] [tinyint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblContactNote] ADD CONSTRAINT [PK_tblContactNote] PRIMARY KEY CLUSTERED  ([ContactNote_PK]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
