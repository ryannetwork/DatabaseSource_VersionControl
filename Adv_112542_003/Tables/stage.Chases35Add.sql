CREATE TABLE [stage].[Chases35Add]
(
[AdvanceOECRawID] [int] NOT NULL,
[FileName] [varchar] (100) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[LoadDate] [datetime2] (3) NOT NULL,
[ClientID] [varchar] (10) COLLATE SQL_Latin1_General_CP437_CI_AI NOT NULL,
[ChaseID] [varchar] (50) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[MemberID] [varchar] (20) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[MemberHICN] [varchar] (15) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[MedicalRecordID] [varchar] (50) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[MemberLastName] [varchar] (100) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[MemberFirstName] [varchar] (100) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[MemberDOB] [varchar] (10) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[MemberGender] [char] (1) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProviderID] [varchar] (20) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProviderNPI] [varchar] (15) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProviderLastName] [varchar] (100) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProviderFirstName] [varchar] (100) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProviderSpecialty] [varchar] (100) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProviderAddress] [varchar] (100) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProviderCity] [varchar] (50) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProviderState] [char] (2) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProviderZip] [varchar] (10) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProviderPhone] [varchar] (20) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ClaimID] [varchar] (20) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[DiagnosisCode] [varchar] (10) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ICD9_ICD10_Ind] [varchar] (2) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[DOS_FromDate] [varchar] (10) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[DOS_ToDate] [varchar] (10) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[PRICING_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[SVC_TAX_ID] [varchar] (20) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[MHFacilityFlag] [varchar] (10) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[NetworkIndicator] [varchar] (20) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[CentauriMemberID] [int] NULL,
[CentauriProviderID] [int] NULL,
[CentauriChaseID] [varchar] (50) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[ProjectName] [varchar] (100) COLLATE SQL_Latin1_General_CP437_CI_AI NULL,
[Provider_PK] [int] NULL,
[ProviderMaster_PK] [int] NULL,
[ProviderOffice_PK] [int] NULL,
[Member_PK] [int] NULL
) ON [PRIMARY]
GO