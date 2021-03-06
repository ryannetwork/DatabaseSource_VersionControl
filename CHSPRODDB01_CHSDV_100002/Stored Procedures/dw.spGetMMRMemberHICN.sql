SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



---- =============================================
---- Author:		Travis Parker
---- Create date:	08/01/2016
---- Description:	Gets the latest MMR MemberHICN data for loading into the DW
---- Usage:			
----		  EXECUTE dw.spGetMMRMemberHICN '06/10/2016'
---- =============================================
CREATE PROC [dw].[spGetMMRMemberHICN]
    @LastLoadTime DATETIME
AS
    SET NOCOUNT ON; 

    SELECT  DISTINCT
            h.Member_BK AS CentauriMemberID ,
            s.HICNumber ,
		  s.RecordSource ,
		  c.Client_BK AS CentauriClientID ,
		  s.LoadDate
    FROM    dbo.H_Member h
            INNER JOIN dbo.L_Member_MMR l ON l.H_Member_RK = h.H_Member_RK
		  INNER JOIN dbo.S_MemberHICN s ON s.H_Member_RK = h.H_Member_RK
		  CROSS JOIN dbo.H_Client c
    WHERE   s.RecordEndDate IS NULL
            AND s.LoadDate > @LastLoadTime;




GO
