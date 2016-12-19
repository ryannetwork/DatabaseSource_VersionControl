SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/* Sample Executions
rdb_retroValidation 0,1,0
*/
Create PROCEDURE [dbo].[rdb_retroValidation]
	@Projects varchar(20),
	@User int,
	@ProjectGroup varchar(10),
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

	--Validation Status
	SELECT NT.NoteType_PK,NT.NoteType,COUNT(CD.CodedData_PK) Diags FROM tblNoteType NT WITH (NOLOCK)
		INNER JOIN tblCodedData CD WITH (NOLOCK) ON CD.CodedSource_PK = NT.NoteType_PK
		INNER JOIN tblSuspect S WITH (NOLOCK) ON CD.Suspect_PK = S.Suspect_PK
		INNER JOIN #tmpProject FP ON FP.Project_PK = S.Project_PK
		INNER JOIN #tmpChannel FC ON FC.Channel_PK = S.Channel_PK
	GROUP BY NT.NoteType_PK,NT.NoteType ORDER BY NT.NoteType

	--Validation Status
	SELECT NT.NoteText_PK,NT.NoteText NoteText,COUNT(CD.CodedData_PK) Diags,NTy.NoteType FROM tblCodedDataNote CDN WITH (NOLOCK)
		INNER JOIN tblCodedData CD WITH (NOLOCK) ON CD.CodedData_PK = CDN.CodedData_PK
		INNER JOIN tblSuspect S WITH (NOLOCK) ON CD.Suspect_PK = S.Suspect_PK
		INNER JOIN tblNoteText NT WITH (NOLOCK) ON NT.NoteText_PK = CDN.NoteText_PK
		INNER JOIN tblNoteType NTy WITH (NOLOCK) ON NT.NoteType_PK = NTy.NoteType_PK
		INNER JOIN #tmpProject FP ON FP.Project_PK = S.Project_PK
		INNER JOIN #tmpChannel FC ON FC.Channel_PK = S.Channel_PK	
	GROUP BY NTy.NoteType,NT.NoteText_PK,NT.NoteText ORDER BY NTy.NoteType DESC,Diags DESC
END

GO
