SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Travis Parker
-- Create date:	07/29/2016
-- Description:	Updates the reference keys in the MMR staging tables
-- =============================================
CREATE PROCEDURE [dbo].[prUpdateMMRReferenceKeys]
    @RecordSource VARCHAR(256)
AS
    BEGIN
	
        DECLARE @CurrentDate DATETIME = GETDATE();

        SET NOCOUNT ON;

        UPDATE  s
        SET     MMR_BK = UPPER(CONCAT(RTRIM(LTRIM(COALESCE(@RecordSource, ''))), ':', RTRIM(LTRIM(COALESCE(MCO_Contract_Nbr, ''))), ':',
                                      RTRIM(LTRIM(COALESCE(File_Run_Date, ''))), ':', RTRIM(LTRIM(COALESCE(Payment_YYYYMM, ''))), ':',
                                      RTRIM(LTRIM(COALESCE(HICN_Nbr, ''))), ':', CONVERT(VARCHAR(20), t.Sequence)))
        FROM    CHSStaging.mmr.MMR_Stage s
                INNER JOIN ( SELECT rown ,
                                    ROW_NUMBER() OVER ( PARTITION BY MCO_Contract_Nbr, File_Run_Date, Payment_YYYYMM, HICN_Nbr ORDER BY Pay_Adjust_MSA_Start_Date, Pay_Adjust_MSA_End_Date, Adjust_Reason_Code, rown ) AS Sequence
                             FROM   CHSStaging.mmr.MMR_Stage
                           ) t ON s.rown = t.rown;

        UPDATE  CHSStaging.mmr.MMR_Stage
        SET     RecordSource = @RecordSource ,
                LoadDate = @CurrentDate ,
                L_Member_MMR_RK = UPPER(CONVERT(CHAR(32), HASHBYTES('MD5',
                                                                    UPPER(CONCAT(RTRIM(LTRIM(COALESCE(CentauriMemberID, ''))), ':',
                                                                                 RTRIM(LTRIM(COALESCE(MMR_BK, '')))))), 2)) ,
                S_MemberHICN_RK = UPPER(CONVERT(CHAR(32), HASHBYTES('MD5',
                                                                    UPPER(CONCAT(RTRIM(LTRIM(COALESCE(CentauriMemberID, ''))), ':',
                                                                                 RTRIM(LTRIM(COALESCE(HICN_Nbr, ''))), ':',
                                                                                 RTRIM(LTRIM(COALESCE(@CurrentDate, ''))), ':',
                                                                                 RTRIM(LTRIM(COALESCE(@RecordSource, '')))))), 2)) ,
                S_MemberHICN_HashDiff = UPPER(CONVERT(CHAR(32), HASHBYTES('MD5',
                                                                          UPPER(CONCAT(RTRIM(LTRIM(COALESCE(CentauriMemberID, ''))), ':',
                                                                                       RTRIM(LTRIM(COALESCE(HICN_Nbr, '')))))), 2)) ,
			 H_MMR_RK = UPPER(CONVERT(CHAR(32), HASHBYTES('MD5',
                                                             UPPER(RTRIM(LTRIM(COALESCE(MMR_BK, ''))))), 2)) ,
                S_MMRDetail_RK = UPPER(CONVERT(CHAR(32), HASHBYTES('MD5',
                                                             UPPER(CONCAT(RTRIM(LTRIM(COALESCE(MMR_BK, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(MCO_Contract_Nbr, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(File_Run_Date, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Payment_YYYYMM, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(HICN_Nbr, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(Pay_Adjust_MSA_Start_Date, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Pay_Adjust_MSA_End_Date, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Adjust_Reason_Code, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(Last_Name, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(First_Initial, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(Gender, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(Birth_Date, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(Age_Group, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(State_County_Code, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Out_Of_Area_Ind, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_A_Entitle_Ind, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_B_Entitle_Ind, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Hospice_Ind, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(ESRD_Ind, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(Aged_Disabled_MSP_Ind, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Institutional_Ind, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(NHC_Ind, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(New_Medicare_Benificiary_Medicaid_Status, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(LTI_Flg, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(Medicaid_Ind, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(PIP_DCG_Catg, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Default_Risk_Factor_Code, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Risk_Adjust_Factor_A, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Risk_Adjust_Factor_B, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Nbr_of_Pay_Adjust_Mths_Part_A, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Nbr_of_Pay_Adjust_Mths_Part_B, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Demographic_Pay_Adjust_Amt_A, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Demographic_Pay_Adjust_Amt_B, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Monthly_Pay_Adjust_Amt_A, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Monthly_Pay_Adjust_Amt_B, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(LIS_Premium_Subsidy, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(ESRD_MSP_Flg, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(MSA_Part_A_Deposit_Recovery_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(MSA_Part_B_Deposit_Recovery_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Nbr_of_MSA_Deposit_Recovery_Mths, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Current_Medicaid_Status, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Risk_Adjuster_Age_Group, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Previous_Disable_Ratio, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(De_Minimis, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Beneficiary_Dual_Part_D_Enroll_Status_Flg, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Plan_Benefit_Pkg_Id, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Race_Ind, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(RA_Factor_Type_Code, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Frailty_Ind, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Orig_Reason_for_Entitle_Code, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Lag_Ind, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(Segment_ID, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Enrollment_Source, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(EGHP_Flg, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_C_Premium_Part_A_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_C_Premium_Part_B_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Rebate_Part_A_Cost_Sharing_Reduct, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Rebate_Part_B_Cost_Sharing_Reduct, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Rebate_Other_Part_A_Mandat_Suplmt_Benefits, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Rebate_Other_Part_B_Mandat_Suplmt_Benefits, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Rebate_Part_B_Prem_Reduct_Part_A_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Rebate_Part_B_Prem_Reduct_Part_B_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Rebate_Part_D_Suplmt_Benefit_Part_A_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Rebate_Part_D_Suplmt_Benefit_Part_B_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Total_Part_A_MA_Payment, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Total_Part_B_MA_Payment, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Total_MA_Payment_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_D_RA_Factor, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_D_Low_Income_Indicator, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_D_Low_Income_Multiplier, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_D_Long_Term_Institut_Ind, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_D_Long_Term_Institut_Multi, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Rebate_for_Part_D_Basic_Prem_Reduct, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_D_Basic_Premium_Amount, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_D_Direct_Subsidy_Mthly_Pay_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Reinsurance_Subsidy_Amount, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(LIS_Cost_Sharing_Amount, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Total_Part_D_Payment, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Nbr_of_Paymt_Adjustmt_Mths_Part_D, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(PACE_Premium_Add_On, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(PACE_Cost_Sharing_Add_On, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_C_Frailty_Score_Factor, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(MSP_Factor, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(MSP_Reduct_Adjustmt_Amt_Part_A, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(MSP_Reduct_Adjustmt_Amt_Part_B, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Medicaid_Dual_Status_Code, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_D_Coverage_Gap_Discount_Amt, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_D_RA_Factor_Type, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Default_Part_D_Risk_Factor_Code, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_A_Risk_Adjstd_Mthly_Rate_Amt_for_Pymt_Adj, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_B_Risk_Adjstd_Mthly_Rate_Amt_for_Pymt_Adj, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Part_D_Direct_Subsidy_Mthly_Rate_Amt_for_Pymt_Adj, ''))), ':',
                                                                          RTRIM(LTRIM(COALESCE(Cleanup_ID, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(RecordSource, ''))), ':', 
														    RTRIM(LTRIM(COALESCE(LoadDate, '')))))), 2)) ,
                S_MMRDetail_HashDiff = UPPER(CONVERT(CHAR(32), HASHBYTES('MD5',
                                                                   UPPER(CONCAT(RTRIM(LTRIM(COALESCE(MMR_BK, ''))), ':',
																RTRIM(LTRIM(COALESCE(MCO_Contract_Nbr, ''))), ':',
															     RTRIM(LTRIM(COALESCE(File_Run_Date, ''))), ':',
															     RTRIM(LTRIM(COALESCE(Payment_YYYYMM, ''))), ':', 
															     RTRIM(LTRIM(COALESCE(HICN_Nbr, ''))), ':', 
															     RTRIM(LTRIM(COALESCE(Pay_Adjust_MSA_Start_Date, ''))), ':',
															     RTRIM(LTRIM(COALESCE(Pay_Adjust_MSA_End_Date, ''))), ':',
															     RTRIM(LTRIM(COALESCE(Adjust_Reason_Code, ''))), ':', 
															     RTRIM(LTRIM(COALESCE(Last_Name, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(First_Initial, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Gender, ''))), ':', 
																RTRIM(LTRIM(COALESCE(Birth_Date, ''))), ':', 
																RTRIM(LTRIM(COALESCE(Age_Group, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(State_County_Code, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Out_Of_Area_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_A_Entitle_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_B_Entitle_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Hospice_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(ESRD_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Aged_Disabled_MSP_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Institutional_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(NHC_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(New_Medicare_Benificiary_Medicaid_Status, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(LTI_Flg, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Medicaid_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(PIP_DCG_Catg, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Default_Risk_Factor_Code, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Risk_Adjust_Factor_A, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Risk_Adjust_Factor_B, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Nbr_of_Pay_Adjust_Mths_Part_A, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Nbr_of_Pay_Adjust_Mths_Part_B, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Demographic_Pay_Adjust_Amt_A, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Demographic_Pay_Adjust_Amt_B, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Monthly_Pay_Adjust_Amt_A, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Monthly_Pay_Adjust_Amt_B, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(LIS_Premium_Subsidy, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(ESRD_MSP_Flg, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(MSA_Part_A_Deposit_Recovery_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(MSA_Part_B_Deposit_Recovery_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Nbr_of_MSA_Deposit_Recovery_Mths, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Current_Medicaid_Status, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Risk_Adjuster_Age_Group, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Previous_Disable_Ratio, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(De_Minimis, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Beneficiary_Dual_Part_D_Enroll_Status_Flg, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Plan_Benefit_Pkg_Id, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Race_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(RA_Factor_Type_Code, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Frailty_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Orig_Reason_for_Entitle_Code, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Lag_Ind, ''))), ':', 
																RTRIM(LTRIM(COALESCE(Segment_ID, ''))), ':', 
																RTRIM(LTRIM(COALESCE(Enrollment_Source, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(EGHP_Flg, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_C_Premium_Part_A_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_C_Premium_Part_B_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Rebate_Part_A_Cost_Sharing_Reduct, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Rebate_Part_B_Cost_Sharing_Reduct, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Rebate_Other_Part_A_Mandat_Suplmt_Benefits, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Rebate_Other_Part_B_Mandat_Suplmt_Benefits, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Rebate_Part_B_Prem_Reduct_Part_A_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Rebate_Part_B_Prem_Reduct_Part_B_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Rebate_Part_D_Suplmt_Benefit_Part_A_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Rebate_Part_D_Suplmt_Benefit_Part_B_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Total_Part_A_MA_Payment, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Total_Part_B_MA_Payment, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Total_MA_Payment_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_D_RA_Factor, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_D_Low_Income_Indicator, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_D_Low_Income_Multiplier, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_D_Long_Term_Institut_Ind, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_D_Long_Term_Institut_Multi, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Rebate_for_Part_D_Basic_Prem_Reduct, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_D_Basic_Premium_Amount, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_D_Direct_Subsidy_Mthly_Pay_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Reinsurance_Subsidy_Amount, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(LIS_Cost_Sharing_Amount, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Total_Part_D_Payment, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Nbr_of_Paymt_Adjustmt_Mths_Part_D, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(PACE_Premium_Add_On, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(PACE_Cost_Sharing_Add_On, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_C_Frailty_Score_Factor, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(MSP_Factor, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(MSP_Reduct_Adjustmt_Amt_Part_A, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(MSP_Reduct_Adjustmt_Amt_Part_B, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Medicaid_Dual_Status_Code, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_D_Coverage_Gap_Discount_Amt, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_D_RA_Factor_Type, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Default_Part_D_Risk_Factor_Code, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_A_Risk_Adjstd_Mthly_Rate_Amt_for_Pymt_Adj, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_B_Risk_Adjstd_Mthly_Rate_Amt_for_Pymt_Adj, ''))), ':',
                                                                                RTRIM(LTRIM(COALESCE(Part_D_Direct_Subsidy_Mthly_Rate_Amt_for_Pymt_Adj, ''))), ':', 
																RTRIM(LTRIM(COALESCE(Cleanup_ID, '')))))), 2));


    END;

GO
