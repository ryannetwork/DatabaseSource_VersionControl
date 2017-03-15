CREATE TABLE [dbo].[Emblem_PharmacyClaim_Stage]
(
[CLAIM_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLAIM_SFX_OR_PARENT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SV_LINE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FORM_TYPE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SV_STAT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FROM_DATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TO_DATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClientMemberID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MEMBER_QUAL] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RELATION] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GRP_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAIM_REC_DATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAIM_ENTRY_DATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PAID_DATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CHK_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ATT_PROV] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ATT_PROV_SPEC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ATT_IPA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ATT_ACO] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_PROV] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLAIM_IN_NETWORK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REF_PROV] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACO_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MED_HOME_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CONTRACT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BEN_PKG_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NDC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_DAYS_SUPPLY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_QTY_DISPENSED] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_DRUG_COST] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_INGR_COST] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_DISP_FEE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_DISCOUNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_DAW] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_FILL_SRC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_REFILLS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_PAR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_FORM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SV_UNITS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_BILLED] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_ALLOWED] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_ALLOWED_STAT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_PAID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_HRA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_DEDUCT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_COINS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_COPAY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_COB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRIMARY_PAYER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_BILLED_DISC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_ALLOWED_DISC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_WITHHOLD] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_DISALLOWED] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMT_MAXIMUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AUTH_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CL_DATA_SRC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MI_POST_DATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_NO] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BRAND_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRUG_NAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GRP_DRUG_NAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRUG_TIER_IND] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GC3_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PLANINDICATOR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SALES_TAX_AMT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VACCINE_ADMIN_AMT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GCDA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LICS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REPORTEDGAPDISCOUNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SERVICEYEARMONTH] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoadDate] [datetime] NULL,
[RecordSource] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberHashKey] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClientHashKey] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Emblem_PharmacyClaim_Stage] ADD CONSTRAINT [PK_Emblem_PharmacyClaim_Stage] PRIMARY KEY CLUSTERED  ([CLAIM_ID], [SV_LINE]) ON [PRIMARY]
GO
