CREATE TABLE [BCBSA_GDIT2017].[Enrollment]
(
[RowID] [int] NOT NULL IDENTITY(1, 1),
[RowFileID] [int] NULL,
[JobRunTaskFileID] [uniqueidentifier] NULL,
[LoadInstanceID] [int] NULL,
[LoadInstanceFileID] [int] NULL,
[ProductID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnrollmentDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TerminationDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BenefitID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GroupID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PayerID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Confidential] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TierCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HCFAMarket] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HCFARateCategory] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CurrentHealthCondCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PharmacyBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OutpatientBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MentalHealthBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MentalHealthINPBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MentalHealthAMBBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MentalHealthDayNightBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChemDepBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChemDepINPBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChemDepAMBBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChemDepDayNightBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DentalBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HospiceBenefit] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Region] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SubscriberID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SubscriberRegion] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AltPopID1] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AltPopID2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMSPlanID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SNPEnrolleeType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnrollmentCustom1] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnrollmentCustom2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnrollmentCustom3] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnrollmentCustom4] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderOrganizationID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PAProductLine] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NYProductLine] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HBXMemberID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MetalLevel] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnrollmentRoute] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APTCorCSREligibilityFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HIOSID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MarketCoverage] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSPFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PlanMarketingName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedicaidExpansionQHPEnrollee] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CoverageIndicator] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AsOfDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SourceID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
