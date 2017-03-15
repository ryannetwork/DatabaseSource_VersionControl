CREATE TABLE [dbo].[HCSC_IVA_CodedDataHCC]
(
[RecordID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HIOS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EdgeEnrolleeID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberFirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberDOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberGender] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DXCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FromDOSDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ThruDOSDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NPI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ScannedFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CNAFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChaseID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HCC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CodedFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CodedSource] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewDOSFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstCoderName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstCoderInitials] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstCoderOutCome] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstCoderDXCodeNotes] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondCoderName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondCoderInitials] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondCoderOutCome] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondCoderDXCodeNotes] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClientFileName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondCoderAdditionalNotes] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstCoderAdditionalNotes] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
