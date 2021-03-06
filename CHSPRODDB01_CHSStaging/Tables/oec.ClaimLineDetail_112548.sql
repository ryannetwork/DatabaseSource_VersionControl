CREATE TABLE [oec].[ClaimLineDetail_112548]
(
[Client_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Chase_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Claim_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Service_Line] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Revenue_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Service_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Service_Modifier_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Bill_Type_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Facility_Type_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
[Employee_YN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OEC_ProjectID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OEC_BK] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_OEC_RK] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S_OECClaimDetail_RK] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HashDiff] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoadDate] [datetime] NULL,
[FileName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
