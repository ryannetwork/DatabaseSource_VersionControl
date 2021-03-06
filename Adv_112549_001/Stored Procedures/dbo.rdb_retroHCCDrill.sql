SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:	Sajid Ali
-- Create date: Oct-02-2015
-- Description:	
-- =============================================
/* Sample Executions
rdb_retroValidationDrill 1,1,0,1,0
*/
CREATE PROCEDURE [dbo].[rdb_retroHCCDrill]
	@Projects varchar(20),
	@User int,
	@ProjectGroup varchar(10),
	@HCC int,
	@Export int,
	@Channel int
AS
BEGIN
	-- PROJECT/Channel SELECTION
	CREATE TABLE #tmpProject (Project_PK INT)
	CREATE INDEX idxProjectPK ON #tmpProject (Project_PK)

	CREATE TABLE #tmpChannel (Channel_PK INT)
	CREATE INDEX idxChannelPK ON #tmpChannel (Channel_PK)

	IF Exists (SELECT * FROM tblUser WHERE IsAdmin=1 AND User_PK=@User)	--For Admins
	BEGIN
		INSERT INTO #tmpProject(Project_PK) SELECT DISTINCT Project_PK FROM tblProject P WHERE P.IsRetrospective=1
		INSERT INTO #tmpChannel(Channel_PK) SELECT DISTINCT Channel_PK FROM tblChannel 
	END
	ELSE
	BEGIN
		INSERT INTO #tmpProject(Project_PK) SELECT DISTINCT Project_PK FROM tblUserProject WHERE User_PK=@User
		INSERT INTO #tmpChannel(Channel_PK) SELECT DISTINCT Channel_PK FROM tblUserChannel WHERE User_PK=@User
	END

	IF (@Projects<>'0')
		EXEC ('DELETE FROM #tmpProject WHERE Project_PK NOT IN ('+@Projects+')')
		
	IF (@ProjectGroup<>'0')
		DELETE T FROM #tmpProject T INNER JOIN tblProject P ON P.Project_PK = T.Project_PK WHERE ProjectGroup_PK<>@ProjectGroup
		
	IF (@Channel<>0)
		DELETE T FROM #tmpChannel T WHERE Channel_PK<>@Channel				 
	-- PROJECT/Channel SELECTION

	;With tbl AS(
		SELECT 
			ROW_NUMBER() OVER(ORDER BY M.Lastname ASC) AS [#],
			S.ChaseID,M.Member_ID,M.Lastname+IsNull(', '+M.Firstname,'') Member,
			PM.Provider_ID,PM.Lastname+IsNull(', '+PM.Firstname,'') Provider,
			S.Scanned_Date Extracted,
			CD.Coded_Date Coded,
			CD.DOS_Thru DOS,
			MC.V12HCC [HCC]
		FROM tblSuspect S WITH (NOLOCK) 
			INNER JOIN #tmpProject FP ON FP.Project_PK = S.Project_PK
			INNER JOIN #tmpChannel FC ON FC.Channel_PK = S.Channel_PK
			INNER JOIN tblMember M WITH (NOLOCK) ON M.Member_PK = S.Member_PK
			INNER JOIN tblProvider P WITH (NOLOCK) ON P.Provider_PK = S.Provider_PK
			INNER JOIN tblProviderMaster PM WITH (NOLOCK) ON PM.ProviderMaster_PK = P.ProviderMaster_PK
			INNER JOIN tblCodedData CD WITH (NOLOCK) ON S.Suspect_PK = CD.Suspect_PK
			INNER JOIN tblModelCode MC WITH (NOLOCK) ON MC.DiagnosisCode = CD.DiagnosisCode
			WHERE MC.V12HCC=@HCC
	)
	SELECT * FROM tbl WHERE [#]<=25 OR @Export=1 ORDER BY [#]
	/*
	IF (SELECT COUNT(*) FROM #tmpProject)>1
		SELECT '';
	ELSE
		SELECT P.Project_Name+' - ' FROM tblProject P INNER JOIN #tmpProject tP ON tP.Project_PK=P.Project_PK
	*/
	SELECT 'HCC '+CAST(@HCC AS VARCHAR)+' ('+HCC_Desc+')' FROM tblHCC WHERE PaymentModel=12 AND HCC=@HCC;

END
GO
