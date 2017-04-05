CREATE TABLE [import].[Members]
(
[memid] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[gender] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dob] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[lname] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fname] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mmidname] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[subid] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[add1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[add2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[city] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[state] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mzip] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mphone] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[pfirstname] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[pmidname] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[plastname] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[race] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ethn] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[racesource] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ethnsource] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[spokenlang] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[spokenlangsource] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[writtenlang] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[writtenlangsource] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[otherlang] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[otherlangsource] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[measureset] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[measure] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ihds_member_id] [int] NULL,
[id] [bigint] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [import].[Members] ADD CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
