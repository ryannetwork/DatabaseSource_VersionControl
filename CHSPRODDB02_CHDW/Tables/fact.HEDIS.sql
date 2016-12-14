CREATE TABLE [fact].[HEDIS]
(
[HEDISID] [bigint] NOT NULL IDENTITY(1, 1),
[CLIENT] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLIENT_MEMBER_STATUS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODUCT_ROLLUP_ID] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEM_NBR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MMS_MED] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMS_RX] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMS_MH_INP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMS_MH_INT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMS_MH_AMB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMS_CD_INP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMS_CD_INT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMS_CD_AMB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMS_DENT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AAP_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AAP_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AAP_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AAP_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AAP_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AAP_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_DEN4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_NUM4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPC_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPC_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPC_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_DEN4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_DEN5] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_DEN6] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_NUM4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_NUM5] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADV_NUM6] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IET_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IET_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IET_NUM1_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IET_NUM1_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IET_NUM2_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IET_NUM2_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APP_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APP_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APP_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APP_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APP_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APP_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM5] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM6] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM7] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM8] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM9] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM10] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM11] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM12] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM13] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM14] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM15] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM16] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM17] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM18] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIS_NUM19] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[URI_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[URI_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CWP_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CWP_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COL_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COL_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCS_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCS_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCS_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCS_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CHL_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CHL_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CHL_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CHL_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OMW_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OMW_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBP_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBP_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PBH_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PBH_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMC_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMC_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMC_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMC_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_NUM4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_NUM5] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_NUM6] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_NUM7] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_NUM8] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_NUM9] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDC_NUM10] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASM_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASM_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASM_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASM_DEN4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASM_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASM_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASM_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASM_NUM4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FUH_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FUH_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FUH_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMM_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMM_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMM_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMM_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GSO_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GSO_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LBP_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LBP_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AAB_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AAB_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPR_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPR_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADD_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADD_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADD_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADD_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ART_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ART_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPM_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPM_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPM_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPM_DEN4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPM_NE1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPM_NE2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPM_NE3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPM_NE4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DAE_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DAE_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DAE_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DDE_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DDE_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DDE_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DDE_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DDE_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DDE_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PCE_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PCE_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PCE_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LSC_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LSC_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABA_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABA_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_DEN1_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_NUM1_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_DEN1_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_NUM1_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_DEN2_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_NUM2_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_DEN2_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_NUM2_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_DEN3_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_NUM3_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_DEN3_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCC_NUM3_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COA_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COA_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COA_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COA_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COA_NUM4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MRP_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MRP_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IMA_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IMA_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IMA_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IMA_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPV_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPV_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM1_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM1_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM2_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM2_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM3_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM3_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_DEN4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM4_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM4_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_DEN5] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM5_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM5_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_DEN6] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM6_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMA_NUM6_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_DEN4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_DEN5] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_DEN6] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_NUM4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_NUM5] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMR_NUM6] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMD_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMD_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SAA_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SAA_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSD_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSD_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMC_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMC_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NCS_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NCS_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PSA_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PSA_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APC_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APC_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APC_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APC_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APC_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APC_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APM_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APM_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APM_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APM_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APM_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APM_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FPC_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FPC_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FPC_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FPC_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FPC_NUM4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FPC_NUM5] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[W15_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[W15_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[W15_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[W15_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[W15_NUM4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[W15_NUM5] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[W15_NUM6] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[W15_NUM7] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[W34_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[W34_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AWC_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AWC_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_CABG] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_PTCA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_CC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_CE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_RDF] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_THR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_TKR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_EXL] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_CHO] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_CHC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_HYA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_HYV] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_PROS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_DC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_BACK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_MYR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_TON] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_MAST] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_LUMP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FSP_BARI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPU_DISCH_TOT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPU_DAYS_TOT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPU_DISCH_MAT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPU_DAYS_MAT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPU_DISCH_SUR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPU_DAYS_SUR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPU_DISCH_MED] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPU_DAYS_MED] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMB_OV] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMB_ED] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMB_AS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMB_OR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPT_ANY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPT_INP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPT_DN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MPT_AMB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IAD_ANY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IAD_INP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IAD_DN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IAD_AMB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOTAL_ABX_SCRIPTS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOTAL_ABX_DAYS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABX_CONCERN_SCRIPTS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXQUIN_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXZITH_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXCEPH2_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXCEPH3_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXAMOX_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXKETO_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXCLIND_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXMISC_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXABSORB_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXAMINO_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXCEPH1_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXLINCO_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXMACRO_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXPEN_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXTET_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABXMISO_PMPY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABX_ALLOTHER_SCRIPTS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PCR_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PCR_NUM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUM_WEIGHTS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRED_READM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDI_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDI_EXCL_REQ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAS_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAS_EXCL_REQ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_EXCL_REQ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCO_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCO_EXCL_REQ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RHY_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RHY_EXCL_REQ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EM_COUNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_LOS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_COUNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PROC_COUNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_INPATIENT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_EM_INPATIENT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_EM_OUTPATIENT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_PROC_INPATIENT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_PROC_OUTPATIENT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_RX] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_LAB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_IMG] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NCQA_PRICE_EM_INP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NCQA_PRICE_EM_OUT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOTAL_COST_EM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NCQA_PRICE_INP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOTAL_COST_INP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NCQA_PRICE_PROC_INP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NCQA_PRICE_PROC_OUT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOTAL_COST_PROC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NCQA_PRICE_RX] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOTAL_COST_RX] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NCQA_PRICE_LAB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NCQA_PRICE_IMG] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LAB_COUNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IMG_COUNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_MMS_MED] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_MMS_RX] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ED_COUNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FREQ_CABG] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FREQ_CE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FREQ_PCI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FREQ_CC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FREQ_CASDT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FREQ_CAD_EBCT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FREQ_CCT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_INP_DISCH] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_INP_DAYS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_IPU_DISCH] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_IPU_DAYS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_IPU_MED_DISCH] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_IPU_MED_DAYS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_IPU_SURG_DISCH] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_IPU_SURG_DAYS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_NON_DISCH] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_NON_DAYS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_N1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_N2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_G1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RX_G2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRUAG_WEIGHT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RASAG_WEIGHT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMORB_WEIGHT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RRU_RISK_GROUP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAS_RISK_GROUP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPC_DEN1_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPC_DEN2_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPC_NUM1_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPC_NUM2_1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPC_DEN1_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPC_DEN2_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPC_NUM1_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPC_NUM2_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPD_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPD_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPD_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPD_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PDC_DEN1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PDC_NUM1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PDC_DEN2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PDC_NUM2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PDC_DEN3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PDC_NUM3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IHU_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INP_SUR_CNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INP_MED_CNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INP_TOT_CNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EDU_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ER_CNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXP_ER_CNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPC_DEN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CHRONIC_ACSC_CNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACUTE_ACSC_CNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPC_INP_TOT_CNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXP_INP_HPCA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXP_INP_HPCCH] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXP_INP_HPTOT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCA_PPD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCCH_PPD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCT_PPD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCA_PPD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCCH_PPD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCT_PPD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCA_PPD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCCH_PPD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCT_PPD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCA_PUCD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCCH_PUCD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCT_PUCD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCA_PUCD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCCH_PUCD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCT_PUCD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCA_PUCD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCCH_PUCD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPCT_PUCD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUR_PPD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MED_PPD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOT_PPD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUR_PPD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MED_PPD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOT_PPD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUR_PPD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MED_PPD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOT_PPD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUR_PUCD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MED_PUCD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOT_PUCD_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUR_PUCD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MED_PUCD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOT_PUCD_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUR_PUCD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MED_PUCD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TOT_PUCD_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPV_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPV_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPV_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUCV_COMORB_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUCV_AGE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUCV_BASE_WT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Case Manager] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHO ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHO Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PCP Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PCP ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RecordSource] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LoadDate] [datetime] NULL,
[ClientID] [int] NULL,
[ProviderID] [int] NULL,
[MemberID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [fact].[HEDIS] ADD CONSTRAINT [PK_HEDIS] PRIMARY KEY CLUSTERED  ([HEDISID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_BizKey] ON [fact].[HEDIS] ([CLIENT], [CLIENT_MEMBER_STATUS], [PRODUCT_ROLLUP_ID], [MEM_NBR], [RecordSource]) ON [PRIMARY]
GO
ALTER TABLE [fact].[HEDIS] ADD CONSTRAINT [FK_HEDIS_Client] FOREIGN KEY ([ClientID]) REFERENCES [dim].[Client] ([ClientID])
GO
ALTER TABLE [fact].[HEDIS] ADD CONSTRAINT [FK_HEDIS_Member] FOREIGN KEY ([MemberID]) REFERENCES [dim].[Member] ([MemberID])
GO
ALTER TABLE [fact].[HEDIS] ADD CONSTRAINT [FK_HEDIS_Provider] FOREIGN KEY ([ProviderID]) REFERENCES [dim].[Provider] ([ProviderID])
GO
