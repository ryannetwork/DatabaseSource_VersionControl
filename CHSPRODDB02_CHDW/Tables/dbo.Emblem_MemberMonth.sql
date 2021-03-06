CREATE TABLE [dbo].[Emblem_MemberMonth]
(
[RecordID] [int] NOT NULL IDENTITY(1, 1),
[CLIENTMEMBERID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEMBERZIPCODE] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MEMBERCOUNTY] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPANFROMDATE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPANTODATE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ELIGIBILITYSTARTDATE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ELIGIBILITYENDDATE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Emblem_MemberMonth] ADD CONSTRAINT [PK__Emblem_M__FBDF78C9402A64F8] PRIMARY KEY CLUSTERED  ([RecordID]) ON [PRIMARY]
GO
