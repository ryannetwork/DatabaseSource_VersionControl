SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



---- =============================================
---- Author:		Travis Parker
---- Create date:	07/26/2016
---- Description:	Gets the latest HEDIS Client data for loading into the DW
---- Usage:			
----		  EXECUTE dw.spGetHEDISClient '06/10/2016'
---- =============================================
CREATE PROC [dw].[spGetHEDISClient]
    @LastLoadTime DATETIME
AS
    SET NOCOUNT ON; 

    SELECT DISTINCT
            Client_BK AS CentauriClientID ,
            ClientName
    FROM    dbo.H_Client
    WHERE   LoadDate > @LastLoadTime;




GO
