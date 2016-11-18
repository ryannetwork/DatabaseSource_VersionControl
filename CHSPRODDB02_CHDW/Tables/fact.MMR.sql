CREATE TABLE [fact].[MMR]
(
[MMRID] [int] NOT NULL IDENTITY(1, 1),
[ClientID] [int] NULL,
[MemberID] [int] NULL,
[Sequence] [int] NULL,
[ContractNbr] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FileRunDate] [int] NULL,
[PaymentDate] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HICN] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstInitial] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Gender] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BirthDate] [int] NULL,
[Age_Group] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StateCountyCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Out_Of_Area_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PartA_Entitle_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PartB_Entitle_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HospiceInd] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ESRDInd] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AgedDisabledMSPInd] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InstitutionalInd] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NHCInd] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewMedicareBenificiaryMedicaidStatus] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LTIFlg] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedicaidInd] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PIPDCGCatg] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Default_Risk_Factor_Code] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Risk_Adjust_FactorA] [numeric] (12, 4) NULL,
[Risk_Adjust_FactorB] [numeric] (12, 4) NULL,
[Nbr_of_Pay_Adjust_Mths_Part_A] [int] NULL,
[Nbr_of_Pay_Adjust_Mths_Part_B] [int] NULL,
[Adjust_Reason_Code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Pay_Adjust_MSA_Start_Date] [int] NULL,
[Pay_Adjust_MSA_End_Date] [int] NULL,
[Demographic_Pay_Adjust_Amt_A] [numeric] (12, 4) NULL,
[Demographic_Pay_Adjust_Amt_B] [numeric] (12, 4) NULL,
[Monthly_Pay_Adjust_Amt_A] [numeric] (12, 4) NULL,
[Monthly_Pay_Adjust_Amt_B] [numeric] (12, 4) NULL,
[LIS_Premium_Subsidy] [numeric] (12, 4) NULL,
[ESRD_MSP_Flg] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSA_Part_A_Deposit_Recovery_Amt] [numeric] (12, 4) NULL,
[MSA_Part_B_Deposit_Recovery_Amt] [numeric] (12, 4) NULL,
[Nbr_of_MSA_Deposit_Recovery_Mths] [int] NULL,
[Current_Medicaid_Status] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Risk_Adjsuter_Age_Group] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Prevous_Disable_Ratio] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[De_Minimis] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Beneficiary_Dual_Part_D_Enroll_Status_Flg] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PlanBenefitPkg_Id] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RaceInd] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAFactorTypeCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FrailtyInd] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrigReasonforEntitle_Code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LagInd] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentID] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnrollmentSource] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EGHPFlg] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PartC_Premium_PartA_Amt] [numeric] (12, 4) NULL,
[PartC_Premium_PartB_Amt] [numeric] (12, 4) NULL,
[Rebate_PartA_Cost_Sharing_Reduct] [numeric] (12, 4) NULL,
[Rebate_PartB_Cost_Sharing_Reduct] [numeric] (12, 4) NULL,
[Rebate_Other_PartA_Mandat_Suplmt_Benefits] [numeric] (12, 4) NULL,
[Rebate_Other_PartB_Mandat_Suplmt_Benefits] [numeric] (12, 4) NULL,
[Rebate_PartB_Prem_Reduct_Part_A_Amt] [numeric] (12, 4) NULL,
[Rebate_PartB_Prem_Reduct_Part_B_Amt] [numeric] (12, 4) NULL,
[Rebate_PartD_Suplmt_Benefit_Part_A_Amt] [numeric] (12, 4) NULL,
[Rebate_PartD_Suplmt_Benefit_Part_B_Amt] [numeric] (12, 4) NULL,
[Total_PartA_MA_Payment] [numeric] (12, 4) NULL,
[Total_PartB_MA_Payment] [numeric] (12, 4) NULL,
[Total_MA_Payment_Amt] [numeric] (12, 4) NULL,
[PartD_RA_Factor] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PartD_Low_Income_Indicator] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PartD_Low_Income_Multiplier] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PartD_Long_Term_Institut_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PartD_Long_Term_Institut_Multi] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rebate_for_PartD_Basic_Prem_Reduct] [numeric] (12, 4) NULL,
[PartD_Basic_Premium_Amount] [numeric] (12, 4) NULL,
[PartD_Direct_Subsidy_Mthly_Pay_Amt] [numeric] (12, 4) NULL,
[ReinsuranceSubsidyAmount] [numeric] (12, 4) NULL,
[LIS_CostSharingAmount] [numeric] (12, 4) NULL,
[Total_PartD_Payment] [numeric] (12, 4) NULL,
[NbrPaymtAdjustmtMthsPartD] [int] NULL,
[PACE_PremiumAddOn] [numeric] (12, 4) NULL,
[PACE_CostSharingAddOn] [numeric] (12, 4) NULL,
[PartC_FrailtyScoreFactor] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSPFactor] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSPReduct_Adjustmt_Amt_PartA] [numeric] (12, 4) NULL,
[MSPReduct_Adjustmt_Amt_PartB] [numeric] (12, 4) NULL,
[MedicaidDualStatus_Code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PartD_Coverage_Gap_Discount_Amt] [numeric] (12, 4) NULL,
[PartD_RAFactorType] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Default_PartD_RiskFactor_Code] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PartA_Risk_Adjstd_Mthly_Rate_Amt_for_Pymt_Adj] [numeric] (12, 4) NULL,
[PartB_Risk_Adjstd_Mthly_Rate_Amt_for_Pymt_Adj] [numeric] (12, 4) NULL,
[PartD_Direct_Subsidy_Mthly_Rate_Amt_for_Pymt_Adj] [numeric] (12, 4) NULL,
[CleanupID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FileName] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreateDate] [datetime] NOT NULL,
[LastUpdate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [fact].[MMR] ADD CONSTRAINT [PK_MMR] PRIMARY KEY CLUSTERED  ([MMRID]) ON [PRIMARY]
GO
ALTER TABLE [fact].[MMR] ADD CONSTRAINT [FK_MMR_Client] FOREIGN KEY ([ClientID]) REFERENCES [dim].[Client] ([ClientID])
GO
ALTER TABLE [fact].[MMR] ADD CONSTRAINT [FK_MMR_Member] FOREIGN KEY ([MemberID]) REFERENCES [dim].[Member] ([MemberID])
GO