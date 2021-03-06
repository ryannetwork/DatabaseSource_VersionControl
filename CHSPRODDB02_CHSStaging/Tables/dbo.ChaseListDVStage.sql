CREATE TABLE [dbo].[ChaseListDVStage]
(
[ClientID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChaseID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberHICN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedicalRecordID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLastName] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberFirstName] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberDOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberGender] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderNPI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderLastName] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderFirstName] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderSpecialty] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderOfficeAddress] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderOfficeCity] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderOfficeState] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderOfficeZip] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderOfficePhone] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderOfficeFax] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderGroupName] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderGroupID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VendorName] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VendorID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VendorAddress] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VendorCity] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VendorState] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VendorZip] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VendorPhone] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VendorFax] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChasePriority] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderRelationsRep] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DiagnosisCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ICD9ICD10Ind] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOSFromDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOSToDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOB] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContractCode] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CentauriProviderID] [bigint] NULL,
[CentauriNetworkID] [bigint] NULL,
[H_Provider_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CentauriMemberID] [int] NULL,
[H_Member_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_Client_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_Location_RK_Provider] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_Location_RK_Vendor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_Specialty_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_OECProject_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_Vendor_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_Contact_RK_Provider] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_Contact_RK_Vendor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_OEC_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[L_MemberOEC_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[L_MemberProvider_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[L_OECProviderContact_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[L_OECVendorContact_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[L_OECProviderLocation_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[L_OECVendorLocation_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[L_ProviderSpecialty_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[L_OECProjectOEC_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_MemberDemo_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_MemberDemoHashDiff] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_ProviderDemo_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_ProviderDemoHashDiff] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_Vendor_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_VendorHashDiff] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_Location_RK_Provider] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_LocationHashDiff_Provider] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_Location_RK_Vendor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_LocationHashDiff_Vendor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_Contact_RK_Provider] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_ContactHashDiff_Provider] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_Contact_RK_Vendor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_ContactHashDiff_Vendor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_MemberHICN_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_MemberHICN_HashDiff] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_OECProject_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_OECProject_HashDiff] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_OECDetail_HashDiff] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_OECDetail_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Location_BK_Provider] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Location_BK_Vendor] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Contact_BK_Vendor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OECProject_BK] [int] NULL,
[OECProjectID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OECProjectName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_Network_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_NetworkHashDiff] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[L_OECProviderNetwork_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Contact_BK_Provider] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OEC_BK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoadDate] [datetime] NULL,
[ClientName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_Network_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
