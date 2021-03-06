SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Paul Johnson
-- Create date: 09/02/2016
-- Update 09/26/2016 Adding RecordEndDate filter PJ
-- Description:	Gets DocumentType details from DV
-- =============================================
CREATE PROCEDURE [dbo].[spGetDocumentType]
	-- Add the parameters for the stored procedure here
--    @CCI VARCHAR(20),
	 @LoadDate DATETIME
AS
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON;

    -- Insert statements for procedure here

        SELECT  h.DocumentType_BK AS CentauriDocumentTypeID ,
                s.DocumentType ,
				s.LastUpdated

        FROM    [dbo].[H_DocumentType] h
                INNER JOIN [dbo].[S_DocumentTypeDetail] s ON s.H_DocumentType_RK = h.H_DocumentType_RK AND s.RecordEndDate IS NULL
		WHERE s.LoadDate> @LoadDate				
				;

    END;

GO
