SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[MedicalRecordHPVExcl] AS
SELECT	*
FROM	dbo.MedicalRecordHPV
WHERE	HPVEvidenceID = 2


GO
