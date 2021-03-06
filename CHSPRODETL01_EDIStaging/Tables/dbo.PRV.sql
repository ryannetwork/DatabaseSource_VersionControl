CREATE TABLE [dbo].[PRV]
(
[InterchangeId] [int] NOT NULL,
[PositionInInterchange] [int] NOT NULL,
[RevisionId] [int] NOT NULL,
[TransactionSetId] [int] NULL,
[ParentLoopId] [int] NULL,
[LoopId] [int] NULL,
[Deleted] [bit] NOT NULL,
[ErrorId] [int] NULL,
[01] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[02] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[03] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[04] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[05] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[06] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PRV] ADD CONSTRAINT [PK_PRV_dbo] PRIMARY KEY CLUSTERED  ([InterchangeId], [PositionInInterchange], [RevisionId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PRV_dbo] ON [dbo].[PRV] ([InterchangeId], [PositionInInterchange], [RevisionId], [Deleted], [ParentLoopId], [LoopId]) ON [PRIMARY]
GO
