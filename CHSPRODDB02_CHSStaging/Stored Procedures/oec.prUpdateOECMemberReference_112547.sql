SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





-- =============================================
-- Author:		Travis Parker
-- Create date:	05/25/2016
-- Description:	Loads new members into the member reference table from the OEC staging tables
-- Usage:			
--		  EXECUTE oec.prUpdateOECMemberReference_112547
-- =============================================

CREATE PROCEDURE [oec].[prUpdateOECMemberReference_112547]
AS
    BEGIN

        SET NOCOUNT ON;


        BEGIN TRY

            BEGIN TRANSACTION;

            --LOAD NEW MEMBERS FROM 834 STAGING
            UPDATE  s
            SET     s.CentauriMemberID = r.CentauriMemberID,
				s.H_Member_RK = r.MemberHashKey
            FROM    oec.AdvanceOECRaw_112547 s
                    INNER JOIN CHSDV.dbo.R_Member AS r ON s.MemberID = r.ClientMemberID
                                                          AND r.ClientID = s.ClientID;

		   
            INSERT  INTO CHSDV.dbo.R_Member
                    ( ClientID ,
                      ClientMemberID ,
                      HICN ,
                      LoadDate ,
                      RecordSource
                    )
                    SELECT  DISTINCT
					   s.ClientID ,
                            s.MemberID ,
                            s.MemberHICN ,
                            s.LoadDate ,
                            s.FileName
                    FROM    oec.AdvanceOECRaw_112547 s
                            LEFT JOIN CHSDV.dbo.R_Member AS r ON s.MemberID = r.ClientMemberID
                                                              AND r.ClientID = s.ClientID
                    WHERE   r.CentauriMemberID IS NULL;


            UPDATE  s
            SET     s.CentauriMemberID = r.CentauriMemberID,
				s.H_Member_RK = r.MemberHashKey
            FROM    oec.AdvanceOECRaw_112547 s
                    INNER JOIN CHSDV.dbo.R_Member AS r ON s.MemberID = r.ClientMemberID
                                                          AND r.ClientID = s.ClientID;


            COMMIT TRANSACTION;
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0
                ROLLBACK TRANSACTION;
            THROW;
        END CATCH;
    END;



GO
