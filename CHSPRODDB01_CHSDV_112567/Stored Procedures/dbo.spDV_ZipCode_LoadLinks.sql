SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Paul Johnson
-- Create date: 08/31/2016
-- Description:	Load all Link Tables from the tblZipCodeStage table. 
-- =============================================
CREATE PROCEDURE [dbo].[spDV_ZipCode_LoadLinks]
	-- Add the parameters for the stored procedure here
	@CCI VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


--** Load L_ZipCodeCLIENT
	SELECT 1
			--No links required

END


GO
