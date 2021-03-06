SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Paul Johnson
-- Create date: 09/01/2016
-- Description:	Gets Member client details from DV
-- =============================================
CREATE PROCEDURE [dbo].[spGetMemberClient]
	-- Add the parameters for the stored procedure here
    --@CCI VARCHAR(20),
	 @LoadDate DATETIME
AS
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON;

    -- Insert statements for procedure here

        SELECT  h.Member_BK AS CentauriMemberID ,
				c.Client_BK AS CentauriClientID,
               h.ClientMemberID AS ClientMemberID,
                 h.LoadDate AS LoadDate
        FROM    [dbo].[H_Member] h
                INNER JOIN [dbo].[L_MemberClient] l ON l.H_Member_RK = h.H_Member_RK 
				INNER JOIN dbo.H_Client c ON l.H_Client_RK = c.H_Client_RK
		WHERE h.LoadDate> @LoadDate				
				;

    END;

GO
