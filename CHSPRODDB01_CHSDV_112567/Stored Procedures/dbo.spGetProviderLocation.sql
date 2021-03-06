SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


-- =============================================
-- Author:		Paul Johnson
-- Create date: 09/01/2016
-- Update 09/26/2016 Adding RecordEndDate filter PJ
--Update 10/04/2016 Replacing RecordEndDate with link Satellite PJ
-- Description:	Gets provider Location details from DV
-- =============================================
CREATE PROCEDURE [dbo].[spGetProviderLocation]
	-- Add the parameters for the stored procedure here
    --@CCI VARCHAR(20) , 
    @LoadDate DATETIME
AS
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON;

    -- Insert statements for procedure here

        SELECT  m.ProviderOffice_BK AS CentauriProviderOffice_ID ,
                s.Address1 AS Addr1 ,
                s.Address2 AS Addr2 ,
                s.City AS City ,
                s.State AS State ,
                s.ZIP AS Zip ,
                s.County AS County
        FROM    dbo.H_ProviderOffice m
                INNER JOIN [dbo].[L_ProviderOfficeLocation] o ON o.H_ProviderOffice_RK = m.H_ProviderOffice_RK 
				INNER JOIN [dbo].[LS_ProviderOfficeLocation] n ON n.L_ProviderOfficeLocation_RK = o.L_ProviderOfficeLocation_RK	AND n.RecordEndDate IS NULL
                INNER JOIN dbo.H_Location c ON o.H_Location_RK = c.H_Location_RK
                INNER JOIN dbo.S_Location s ON s.H_Location_RK = c.H_Location_RK AND s.RecordEndDate IS NULL
        WHERE   s.LoadDate > @LoadDate OR n.LoadDate>@LoadDate;

    END;

GO
