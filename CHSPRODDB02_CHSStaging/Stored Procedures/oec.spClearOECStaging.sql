SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE PROC [oec].[spClearOECStaging]
AS
     SET NOCOUNT ON;
     SET XACT_ABORT ON;

     TRUNCATE TABLE oec.AdvanceOECRaw

GO
