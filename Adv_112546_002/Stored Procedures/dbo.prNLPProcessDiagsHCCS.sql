SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prNLPProcessDiagsHCCS]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--UPDATE CHART PRIORITY FOR NEW FOUND HCC's
	UPDATE sus 
		SET sus.ChartPriority='A' 
	FROM dbo.tblSuspect sus
		INNER JOIN dbo.VivaNLPHCCResults_v2 res ON res.suspect_pk = sus.Suspect_PK
	WHERE res.NewHCCInd = 1 AND sus.ChartPriority IS NULL 



	--MERGE ICD9
	MERGE dbo.tblNPL2Validate AS target
	USING (SELECT Suspect_PK,DiagnosisCode FROM VivaNLPHCCResults_v2 WHERE SubmitInd = 0) AS source
    ON(target.Suspect_PK = source.Suspect_PK AND target.DiagnosisCode = source.DiagnosisCode)
	WHEN NOT MATCHED THEN 
		INSERT(Suspect_PK, DiagnosisCode) VALUES (source.Suspect_PK, source.DiagnosisCode);
	
	--Merge ICD10
	MERGE dbo.tblNPL2Validate AS target
	USING (SELECT Suspect_PK, DiagnosisCode, ICD10Code FROM VivaNLPHCCResults_v2 WHERE SubmitInd = 0) AS source
    ON(target.Suspect_PK = source.Suspect_PK AND target.DiagnosisCode = source.ICD10code)
	WHEN NOT MATCHED THEN 
	INSERT(Suspect_PK, DiagnosisCode) VALUES (source.Suspect_PK, source.ICD10Code);
END

GO
