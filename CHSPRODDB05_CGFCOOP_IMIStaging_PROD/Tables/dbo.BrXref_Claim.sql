CREATE TABLE [dbo].[BrXref_Claim]
(
[BusRuleDtlID] [int] NOT NULL IDENTITY(1, 1),
[ClaimID] [bigint] NULL,
[ACSCategory] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACSClaimFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACSComplexFlag] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACSDescription] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AcuteCareCat] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdmitSourceDesc] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AuthLinkStatus] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AutoAdjudicationFlag] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChronicDiseaseCategory] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChronicDiseaseClaimFlag] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimAgeCategory] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimWithEDVisit] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DHMPLineOfBusiness] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DHMPMediMediClaimFlag] [bit] NULL,
[DHMPPaymentType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DHMPServiceType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DHMPVendorFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DHMPVendorType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DischargeDate] [datetime] NULL,
[IPAdmitDate] [datetime] NULL,
[IPCalcExclusionReason] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPTransferFromNonDHMP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPTransferToDHMP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedClaimExpRank] [int] NULL,
[MedClaimExpTop10] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedicareType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberGroupCategory] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MthStmtEncounterID] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MthStmtLineOfBusiness] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NetAmtPerIPDay] [numeric] (11, 2) NULL,
[NewMemberIn2008] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewMemberIn2009] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewMemberIn2010] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewMemberIn2011] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewMemberIn2012] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewMemberIn2013] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewMemberInPast120Days] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewMemberInPast90Days] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NextClaimWithin07Days] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NextClaimWithin15Days] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NextClaimWithin30Days] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NextClaimWithin45Days] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NextClaimWithin90Days] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NonAcuteCareCat] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PatientStatusDesc] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostFirstACSAdmitFlag] [bit] NULL,
[PrevClaimWithin07Days] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrevClaimWithin15Days] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrevClaimWithin30Days] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrevClaimWithin45Days] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrevClaimWithin90Days] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idxClaim] ON [dbo].[BrXref_Claim] ([ClaimID]) ON [NDX]
GO
CREATE STATISTICS [sp_idxClaim] ON [dbo].[BrXref_Claim] ([ClaimID])
GO
