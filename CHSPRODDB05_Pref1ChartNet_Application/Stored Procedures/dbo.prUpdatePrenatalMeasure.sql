SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jason Franks - jbfranks@gmail.com
-- Create date: 1/25/2014
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prUpdatePrenatalMeasure] 
	-- Add the parameters for the stored procedure here
    @PAMeasureIntakeID INT ,
	@PursuitEventID int,
    @MemberID INT ,
    @QuestionA BIT ,
    @QuestionA_Date DATE ,
    @QuestionB BIT ,
    @QuestionB_Date1 DATE ,
    @QuestionB_Date2 DATE ,
    @SmokingQuestion1 BIT ,
    @SmokingQuestion1_Date DATE ,
    @SmokingQuestion2 BIT ,
    @SmokingQuestion3 BIT ,
    @SmokingQuestion4 BIT ,
    @SmokingQuestion4_Date DATE ,
    @SmokingQuestion5 BIT ,
    @SmokingQuestion5_Date DATE ,
    @SmokingQuestion6 BIT ,
    @SmokingQuestion6_Date DATE ,
    @SmokingQuestion7 BIT ,
    @SmokingQuestion8 BIT ,
    @SmokingQuestion8_Date DATE ,
    @DepressionQuestion1 BIT ,
    @DepressionQuestion1_Date DATE ,
    @DepressionQuestion1a BIT ,
    @DepressionQuestion1a_Date DATE ,
    @DepressionQuestion2 BIT ,
    @DepressionQuestion2_Date DATE ,
    @DepressionQuestion3 BIT ,
    @DepressionQuestion3_Date DATE ,
    @DepressionScreeningTool INT ,
                    --postpartum data addded 2/1/2014
    @PostpartumQuestionA BIT ,
    @PostpartumQuestionA_Date DATE ,
    @PostpartumQuestion4 BIT ,
    @PostpartumQuestion4_Date DATE ,
    @PostpartumQuestion4a BIT ,
    @PostpartumQuestion4a_Date DATE ,
    @PostpartumQuestion5 BIT ,
    @PostpartumQuestion5_Date DATE ,
    @PostpartumQuestion6 BIT ,
    @PostpartumQuestion6_Date DATE ,
    @PostpartumScreeningTool INT ,
    @RiskFactorQuestion1 INT ,
    @RiskFactorQuestion1_Date DATE ,
    @RiskFactorQuestion2 INT ,
    @RiskFactorQuestion2_Date DATE ,
    @RiskFactorQuestion3 INT ,
    @RiskFactorQuestion3_Date DATE ,
    @RiskFactorQuestion4 INT ,
    @RiskFactorQuestion4_Date DATE
AS
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON;

        UPDATE  dbo.PAMeasureIntake
        SET     MemberID = @MemberID ,
                QuestionA = @QuestionA ,
                QuestionB = @QuestionB ,
                SmokingQuestion1 = @SmokingQuestion1 ,
                SmokingQuestion2 = @SmokingQuestion2 ,
                SmokingQuestion3 = @SmokingQuestion3 ,
                SmokingQuestion4 = @SmokingQuestion4 ,
                SmokingQuestion5 = @SmokingQuestion5 ,
                SmokingQuestion6 = @SmokingQuestion6 ,
                SmokingQuestion7 = @SmokingQuestion7 ,
                SmokingQuestion8 = @SmokingQuestion8 ,
                DepressionQuestion1 = @DepressionQuestion1 ,
                DepressionQuestion1a = @DepressionQuestion1a ,
                DepressionQuestion2 = @DepressionQuestion2 ,
                DepressionQuestion3 = @DepressionQuestion3 ,
                SmokingQuestion1_Date = @SmokingQuestion1_Date ,
                SmokingQuestion4_Date = @SmokingQuestion4_Date ,
                SmokingQuestion5_Date = @SmokingQuestion5_Date ,
                SmokingQuestion6_Date = @SmokingQuestion6_Date ,
                SmokingQuestion8_Date = @SmokingQuestion8_Date ,
                DepressionQuestion1_Date = @DepressionQuestion1_Date ,
                DepressionQuestion1a_Date = @DepressionQuestion1a_Date ,
                DepressionQuestion2_Date = @DepressionQuestion2_Date ,
                DepressionQuestion3_Date = @DepressionQuestion3_Date ,
                QuestionA_Date = @QuestionA_Date ,
                QuestionB1_Date = @QuestionB_Date1 ,
                QuestionB2_Date = @QuestionB_Date2 ,
                DepressionScreeningTool = @DepressionScreeningTool ,
        --postpartum data addded 2/1/2014
                PostpartumQuestionA = @PostpartumQuestionA ,
                PostpartumQuestionA_Date = @PostpartumQuestionA_Date ,
                PostpartumQuestion4 = @PostpartumQuestion4 ,
                PostpartumQuestion4_Date = @PostpartumQuestion4_Date ,
                PostpartumQuestion4a = @PostpartumQuestion4a ,
                PostpartumQuestion4a_Date = @PostpartumQuestion4a_Date ,
                PostpartumQuestion5 = @PostpartumQuestion5 ,
                PostpartumQuestion5_Date = @PostpartumQuestion5_Date ,
                PostpartumQuestion6 = @PostpartumQuestion6 ,
                PostpartumQuestion6_Date = @PostpartumQuestion6_Date ,
                PostpartumScreeningTool = @PostpartumScreeningTool ,
                LastUpdatedDate = GETDATE() ,
                RiskFactorQuestion1 = @RiskFactorQuestion1 ,
                RiskFactorQuestion2 = @RiskFactorQuestion2 ,
                RiskFactorQuestion3 = @RiskFactorQuestion3 ,
                RiskFactorQuestion4 = @RiskFactorQuestion4 ,
                RiskFactorQuestion1_Date = @RiskFactorQuestion1_Date ,
                RiskFactorQuestion2_Date = @RiskFactorQuestion2_Date ,
                RiskFactorQuestion3_Date = @RiskFactorQuestion3_Date ,
                RiskFactorQuestion4_Date = @RiskFactorQuestion4_Date
        WHERE   PAMeasureIntakeID = @PAMeasureIntakeID AND
				PursuitEventID = @PursuitEventID;
    END
GO
GRANT EXECUTE ON  [dbo].[prUpdatePrenatalMeasure] TO [ChartNet_AppUser_Custom]
GO
