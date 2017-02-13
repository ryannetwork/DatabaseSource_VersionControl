CREATE TABLE [stage].[BCBSWNY_OEC_112555_001_20170111]
(
[Client_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Chase_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_HICN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Medical_Record_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_Last_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_First_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_DOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_Gender] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_NPI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Last_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_First_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Specialty] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Office_Address] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Office_City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Office_State] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Office_Zip] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Office_Phone] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Office_Fax] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Group_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Group_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor_Address] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor_City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor_State] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor_Zip] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor_Phone] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor_Fax] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Chase_Priority] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Relations_Rep] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Claim_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Diagnosis_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ICD9_ICD10_Ind] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOS_From_Date] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOS_To_Date] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_TIN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Record_Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewAddress] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewZip] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneUSed] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FAXUSed] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StageID] [int] NOT NULL,
[CentuariProviderID] [bigint] NULL,
[Member_PK] [bigint] NULL,
[Provider_PK] [bigint] NULL,
[ProviderMaster_PK] [bigint] NULL,
[ProviderOffice_PK] [bigint] NULL,
[Existing] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
