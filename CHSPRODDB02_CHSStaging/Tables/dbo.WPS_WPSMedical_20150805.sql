CREATE TABLE [dbo].[WPS_WPSMedical_20150805]
(
[Policy_Type] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Coverage_Code] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Coverage_Description] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group_Provider_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Tax_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group_Provider_Name] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[provider_addr_1] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[provider_addr_2] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[provider_city] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_State] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Zip] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_County] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Product_Network] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Network_Set] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Network] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[in_net_ind_payment_level] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Agreement_Id] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Agreement_Source_Code] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Pricing_Code] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Pricing_Source_Code] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Specialty] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Specialty_Description] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Facility_Type] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Facility_Type_Description] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Professional_Facility] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS_Description] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[bill_type] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SERV_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Procedure_Code] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Procedure_Description] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Modifier_1] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Modifier_2] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Modifier_3] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Modifier_4] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Revenue_Code] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Revenue_Code_Description] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mdc_cd] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mdc_description] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRG] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line_diag1] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line_diag1_description] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line_diag2] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line_diag3] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line_diag4] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line_diag5] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line_diag6] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line_diag7] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line_diag8] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag1] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag2] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag3] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag4] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag5] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag6] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag7] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag8] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag9] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag10] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag11] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag12] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag13] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag14] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag15] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag16] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag17] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag18] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag19] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag20] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag21] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag22] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag23] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag24] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hdr_diag25] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Claim_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line_Nbr] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOS_From] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOS_To] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[paid_dt] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[admit_dt] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[discharge_dt] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group_Name] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASO_Risk] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GRP_TYPE_CD] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Product_Class] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COB_Indicator] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Adj_from_Claim_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_DOB] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_Age] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_Sex] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[member_county] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[pay_status] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status_Code] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Disallow_Code] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Disallow_Description] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NDC] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NDC_Description] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[therapy_class_4] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[therapy_class_type_4] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[prescribing_prov] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[prescribing_first_name] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[prescribing_last_name] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[days_supply] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sub_Group_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group_Class] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Servicing_Provider_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Servicing_Provider_Name] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[servicing_npi] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[medical_product] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[claim_product] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PDT_PLAN_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[METAL_TIER_TXT] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CO_CD] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Units] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dispensed_quantity] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Billed] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Considered_Charge] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Paid] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[rundate] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
