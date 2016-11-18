CREATE TABLE [stage].[MMR]
(
[ClientID] [int] NULL,
[CentauriMemberID] [bigint] NULL,
[Sequence] [int] NULL,
[MCO_Contract_Nbr] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[File_Run_Date] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Payment_YYYYMM] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HICN_Nbr] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last_Name] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[First_Initial] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Gender] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Birth_Date] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Age_Group] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State_County_Code] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Out_Of_Area_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_A_Entitle_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_B_Entitle_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Hospice_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ESRD_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Aged_Disabled_MSP_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Institutional_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NHC_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[New_Medicare_Benificiary_Medicaid_Status] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LTI_Flg] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Medicaid_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PIP_DCG_Catg] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Default_Risk_Factor_Code] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Risk_Adjust_Factor_A] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Risk_Adjust_Factor_B] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Nbr_of_Pay_Adjust_Mths_Part_A] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Nbr_of_Pay_Adjust_Mths_Part_B] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Adjust_Reason_Code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Pay_Adjust_MSA_Start_Date] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Pay_Adjust_MSA_End_Date] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Demographic_Pay_Adjust_Amt_A] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Demographic_Pay_Adjust_Amt_B] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Monthly_Pay_Adjust_Amt_A] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Monthly_Pay_Adjust_Amt_B] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LIS_Premium_Subsidy] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ESRD_MSP_Flg] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSA_Part_A_Deposit_Recovery_Amt] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSA_Part_B_Deposit_Recovery_Amt] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Nbr_of_MSA_Deposit_Recovery_Mths] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current_Medicaid_Status] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Risk_Adjuster_Age_Group] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Previous_Disable_Ratio] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[De_Minimis] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Beneficiary_Dual_Part_D_Enroll_Status_Flg] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan_Benefit_Pkg_Id] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Race_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RA_Factor_Type_Code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Frailty_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Orig_Reason_for_Entitle_Code] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Lag_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Segment_ID] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enrollment_Source] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EGHP_Flg] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_C_Premium_Part_A_Amt] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_C_Premium_Part_B_Amt] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rebate_Part_A_Cost_Sharing_Reduct] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rebate_Part_B_Cost_Sharing_Reduct] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rebate_Other_Part_A_Mandat_Suplmt_Benefits] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rebate_Other_Part_B_Mandat_Suplmt_Benefits] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rebate_Part_B_Prem_Reduct_Part_A_Amt] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rebate_Part_B_Prem_Reduct_Part_B_Amt] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rebate_Part_D_Suplmt_Benefit_Part_A_Amt] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rebate_Part_D_Suplmt_Benefit_Part_B_Amt] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Total_Part_A_MA_Payment] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Total_Part_B_MA_Payment] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Total_MA_Payment_Amt] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_D_RA_Factor] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_D_Low_Income_Indicator] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_D_Low_Income_Multiplier] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_D_Long_Term_Institut_Ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_D_Long_Term_Institut_Multi] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rebate_for_Part_D_Basic_Prem_Reduct] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_D_Basic_Premium_Amount] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_D_Direct_Subsidy_Mthly_Pay_Amt] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Reinsurance_Subsidy_Amount] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LIS_Cost_Sharing_Amount] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Total_Part_D_Payment] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Nbr_of_Paymt_Adjustmt_Mths_Part_D] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PACE_Premium_Add_On] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PACE_Cost_Sharing_Add_On] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_C_Frailty_Score_Factor] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSP_Factor] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSP_Reduct_Adjustmt_Amt_Part_A] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSP_Reduct_Adjustmt_Amt_Part_B] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Medicaid_Dual_Status_Code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_D_Coverage_Gap_Discount_Amt] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_D_RA_Factor_Type] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Default_Part_D_Risk_Factor_Code] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_A_Risk_Adjstd_Mthly_Rate_Amt_for_Pymt_Adj] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_B_Risk_Adjstd_Mthly_Rate_Amt_for_Pymt_Adj] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Part_D_Direct_Subsidy_Mthly_Rate_Amt_for_Pymt_Adj] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cleanup_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RecordSource] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_BK] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoadDate] [datetime] NULL
) ON [PRIMARY]
GO
