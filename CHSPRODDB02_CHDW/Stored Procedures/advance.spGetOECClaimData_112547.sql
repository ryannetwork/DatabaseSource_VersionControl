SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Travis Parker
-- Create date:	06/03/2016
-- Description:	retrieves claim data for advance for the specified chart retrieval
-- Usage:			
--		  EXECUTE advance.spGetOECClaimData_112547 '001', 112546
-- =============================================
CREATE PROC [advance].[spGetOECClaimData_112547]
    @ProjectID VARCHAR(20) ,
    @CentauriClientID INT
AS
    SET NOCOUNT ON; 

    SELECT 
            pc.ClientProviderID,
		  mc.ClientMemberID,
		  o.ChaseID,
		  CONVERT(SMALLDATETIME,o.DOS_FromDate) DOS_FromDate,
		  CONVERT(SMALLDATETIME,o.DOS_ToDate) DOS_ToDate--,
    FROM    fact.OEC o
            INNER JOIN dim.OECProject op ON op.OECProjectID = o.OECProjectID
            INNER JOIN dim.Client c ON c.ClientID = op.ClientID
		  INNER JOIN dim.MemberClient mc ON c.ClientID = mc.ClientID AND mc.MemberID = o.MemberID
		  INNER JOIN dim.ProviderClient pc ON c.ClientID = pc.ClientID AND o.ProviderID = pc.ProviderID 
    WHERE   op.ProjectID = '001'--@ProjectID
            AND c.CentauriClientID = 112547-- @CentauriClientID;
    --GROUP BY pc.ClientProviderID, mc.ClientMemberID, o.ChaseID, o.DOS_FromDate, o.DOS_ToDate
    
    --SELECT DISTINCT
    --        pc.ClientProviderID,
		  --mc.ClientMemberID,
		  --o.OECID,
		  --o.DiagnosisCode,
		  --o.ClaimID,
		  --CONVERT(SMALLDATETIME,o.DOS_FromDate) DOS_FromDate,
		  --CONVERT(SMALLDATETIME,o.DOS_ToDate) DOS_ToDate,
		  --CONVERT(BIT,CASE o.ICD_Indicator WHEN '10' THEN 1 WHEN '9' THEN 0 ELSE NULL END) AS IsICD10
    --FROM    fact.OEC o
    --        INNER JOIN dim.OECProject op ON op.OECProjectID = o.OECProjectID
    --        INNER JOIN dim.Client c ON c.ClientID = op.ClientID
    --        INNER JOIN dim.Member m ON o.MemberID = m.MemberID
		  --INNER JOIN dim.MemberClient mc ON c.ClientID = mc.ClientID AND m.MemberID = mc.MemberID
		  --INNER JOIN dim.Provider p ON o.ProviderID = p.ProviderID
		  --INNER JOIN dim.ProviderClient pc ON c.ClientID = pc.ClientID AND p.ProviderID = pc.ProviderID
    --WHERE   op.ProjectID = @ProjectID
    --        AND c.CentauriClientID = @CentauriClientID;


		  
GO
