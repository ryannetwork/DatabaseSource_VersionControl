SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
	CREATE VIEW [dbo].[MedicalRecordCCSExcl] AS
		SELECT	*
		FROM	dbo.MedicalRecordCCS
		WHERE	EvidenceType = 'Exclusion'
GO
