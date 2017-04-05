CREATE TABLE [import].[Observation]
(
[ptid] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[date] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ocode] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[oflag] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[otext] [varchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[value] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[units] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[date_e] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[status] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[oresulttype] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[rvflag] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tflag] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[measureset] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[measure] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ihds_member_id] [int] NULL,
[id] [bigint] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [import].[Observation] ADD CONSTRAINT [PK_Observation] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
