CREATE TABLE [Claim].[ClaimCodes]
(
[ClaimTypeID] [tinyint] NOT NULL,
[Code] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CodeID] [int] NULL,
[CodeTypeID] [tinyint] NOT NULL,
[DataSetID] [int] NOT NULL,
[DSClaimCodeID] [bigint] NOT NULL IDENTITY(1, 1),
[DSClaimID] [bigint] NULL,
[DSClaimLineID] [bigint] NOT NULL,
[DSMemberID] [bigint] NOT NULL,
[IsPrimary] [bit] NOT NULL CONSTRAINT [DF_ClaimCodes_IsPrimary] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Claim].[ClaimCodes] ADD CONSTRAINT [PK_Claim_ClaimCodes] PRIMARY KEY CLUSTERED  ([DSClaimCodeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Claim_ClaimCodes_Codes] ON [Claim].[ClaimCodes] ([Code], [CodeTypeID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Claim_ClaimCodes] ON [Claim].[ClaimCodes] ([DataSetID], [DSClaimLineID]) INCLUDE ([ClaimTypeID], [Code], [CodeTypeID], [DSClaimCodeID], [DSClaimID], [IsPrimary]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Claim_ClaimCodes_DSClaimLineID] ON [Claim].[ClaimCodes] ([DSClaimLineID]) ON [PRIMARY]
GO
