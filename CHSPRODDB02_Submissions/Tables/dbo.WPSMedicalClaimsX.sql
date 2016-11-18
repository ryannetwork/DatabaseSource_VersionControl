CREATE TABLE [dbo].[WPSMedicalClaimsX]
(
[Policy_Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Coverage_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Coverage_Description] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group_Provider_ID] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TIN_NUM] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tax_name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group_Provider_Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_State] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_County] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Product_Network] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Network_Set] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Network] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[in_net_ind_payment_level] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[in_net_ind_provider] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider_Agreement_Id] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[agreement_description] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Pricing_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Pricing_Source_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PCP_Specialist] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Specialty] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Specialty_Description] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Facility_Type] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Facility_Type_Description] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Professional_Facility] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS_Description] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[bill_type] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[facil_prof] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SERV_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Procedure_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Procedure_Description] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Modifier_1] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Modifier_2] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Modifier_3] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Modifier_4] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Revenue_Code] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Revenue_Code_Description] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mdc_cd] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mdc_description] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRG] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dx_version] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Diagnosis1] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Diagnosis_Description] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Diagnosis2] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Diagnosis3] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Diagnosis4] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Claim_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line_Nbr] [int] NULL,
[DOS_From] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOS_To] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[paid_dt] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[admit_dt] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[discharge_dt] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group_ID] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group_Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASO_Risk] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GRP_TYPE_CD] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UW_GRP_SIZE_CD] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Product_Class] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COB_Indicator] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Adj_from_Claim_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_ID] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MBR_SFX] [int] NULL,
[MBR_REL_CD] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_DOB] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_Age] [int] NULL,
[Member_Sex] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[member_county] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Disallow_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Disallow_Description] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NDC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NDC_Description] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[therapy_class_4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[therapy_class_type_4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sub_Group_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUB_GRP_NME] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group_Class] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GRP_CLA_DSC] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Servicing_Provider_ID] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Servicing_Provider_Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[servicing_npi] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[medical_product] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[claim_product] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PDT_PLAN_ID] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACA_IND] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[METAL_TIER_TXT] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ON_EXCHG_IND] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CO_CD] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[rating_region] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[bencat_code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[bencat_desc] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Units] [int] NULL,
[Billed] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Considered_Charge] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Allowed] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[pi_dalw_cutback] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Paid] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DED_AMT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINS_AMT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COPAY_AMT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cob_paid] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cob_allowed] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WPSMedicalClaimsXID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WPSMedicalClaimsX] ADD CONSTRAINT [PK_WPSMedicalClaimsXID] PRIMARY KEY CLUSTERED  ([WPSMedicalClaimsXID]) ON [PRIMARY]
GO
