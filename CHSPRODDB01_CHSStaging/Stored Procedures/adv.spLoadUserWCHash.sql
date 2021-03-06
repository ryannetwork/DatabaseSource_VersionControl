SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Paul Johnson
-- Create date: 09/28/2016
--Update making BC and WC the same PJ
--Update adding new columns for Advance updates 02282017 PDJ
-- Description:	Loads the StagingHash with the hashdiff key
-- Usage		EXECUTE adv.spLoadUserWCHash @CCI INT @Date DateTime
-- =============================================
CREATE PROCEDURE [adv].[spLoadUserWCHash]
    @CCI INT ,
    @Date DATETIME
AS
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON;

    -- Insert statements for procedure here
		DECLARE @recordsource VARCHAR(20)
	SET @recordsource =(SELECT TOP 1 RecordSource FROM adv.AdvanceVariables WHERE  AVKey =(SELECT TOP 1 VariableLoadKey FROM adv.AdvanceVariableLoad))
     

        INSERT  INTO adv.StagingHash
                ( HashDiff ,
                  ClientID ,
                  TableName ,
                  CreateDate,
				  RecordSource
                )
                SELECT  UPPER(CONVERT(CHAR(32), HASHBYTES('MD5',
                                                          UPPER(CONCAT(RTRIM(LTRIM(COALESCE(a.User_PK, ''))), ':', RTRIM(LTRIM(COALESCE(a.Username, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.Password, ''))), ':', RTRIM(LTRIM(COALESCE(a.Lastname, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.Firstname, ''))), ':', RTRIM(LTRIM(COALESCE(a.Email_Address, ''))),
                                                                       ':', RTRIM(LTRIM(COALESCE(a.IsAdmin, ''))), ':', RTRIM(LTRIM(COALESCE(a.IsScanTech, ''))),
                                                                       ':', RTRIM(LTRIM(COALESCE(a.IsScheduler, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.IsReviewer, ''))), ':', RTRIM(LTRIM(COALESCE(a.IsQA, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.IsHRA, ''))), ':', RTRIM(LTRIM(COALESCE(a.IsActive, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.only_work_selected_hours, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.only_work_selected_zipcodes, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.deactivate_after, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.linked_provider_id, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.linked_provider_pk, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.IsClient, ''))), ':', RTRIM(LTRIM(COALESCE(a.sch_Name, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.sch_Tel, ''))), ':', RTRIM(LTRIM(COALESCE(a.sch_Fax, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.IsSchedulerSV, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.IsScanTechSV, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.IsChangePasswordOnFirstLogin, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.Location_PK, ''))), ':', RTRIM(LTRIM(COALESCE(a.isQCC, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.willing2travell, ''))), ':', RTRIM(LTRIM(COALESCE(a.is_male, ''))),
                                                                       ':', RTRIM(LTRIM(COALESCE(a.address, ''))), ':', RTRIM(LTRIM(COALESCE(a.zipcode_pk, ''))),
                                                                       ':', RTRIM(LTRIM(COALESCE(a.Latitude, ''))), ':', RTRIM(LTRIM(COALESCE(a.Longitude, ''))),
                                                                       ':', RTRIM(LTRIM(COALESCE(a.linked_scheduler_user_pk, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.EmploymentStatus, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.EmploymentAgency, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.isAllowDownload, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.CoderLevel, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.IsSchedulerManager, ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.[IsInvoiceAccountant], ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.[IsBillingAccountant], ''))), ':',
                                                                       RTRIM(LTRIM(COALESCE(a.[IsManagementUser], ''))), ':',
																	   RTRIM(LTRIM(COALESCE(a.IsCoderOnsite, '')))
																	   ))), 2)) ,
                        @CCI ,
                        'tblUser' ,
                        @Date,
						@recordsource
                FROM    adv.tblUserWCStage a
                        LEFT OUTER JOIN adv.StagingHash b ON UPPER(CONVERT(CHAR(32), HASHBYTES('MD5',
                                                                                               UPPER(CONCAT(RTRIM(LTRIM(COALESCE(a.User_PK, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.Username, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.Password, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.Lastname, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.Firstname, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.Email_Address, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsAdmin, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsScanTech, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsScheduler, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsReviewer, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsQA, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsHRA, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsActive, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.only_work_selected_hours, ''))),
                                                                                                            ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.only_work_selected_zipcodes,
                                                                                                                                 ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.deactivate_after, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.linked_provider_id, ''))),
                                                                                                            ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.linked_provider_pk, ''))),
                                                                                                            ':', RTRIM(LTRIM(COALESCE(a.IsClient, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.sch_Name, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.sch_Tel, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.sch_Fax, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsSchedulerSV, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsScanTechSV, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsChangePasswordOnFirstLogin,
                                                                                                                                 ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.Location_PK, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.isQCC, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.willing2travell, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.is_male, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.address, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.zipcode_pk, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.Latitude, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.Longitude, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.linked_scheduler_user_pk, ''))),
                                                                                                            ':', RTRIM(LTRIM(COALESCE(a.EmploymentStatus, ''))),
                                                                                                            ':', RTRIM(LTRIM(COALESCE(a.EmploymentAgency, ''))),
                                                                                                            ':', RTRIM(LTRIM(COALESCE(a.isAllowDownload, ''))),
                                                                                                            ':', RTRIM(LTRIM(COALESCE(a.CoderLevel, ''))), ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.IsSchedulerManager, ''))),
                                                                                                            ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.[IsInvoiceAccountant], ''))),
                                                                                                            ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.[IsBillingAccountant], ''))),
                                                                                                            ':',
                                                                                                            RTRIM(LTRIM(COALESCE(a.[IsManagementUser], ''))), ':',
																											RTRIM(LTRIM(COALESCE(a.IsCoderOnsite, '')))
																											))), 2)) = b.HashDiff
                                                             AND b.ClientID = @CCI
                                                             AND b.TableName = 'tblUser'
															 AND b.RecordSource = @recordsource
                WHERE   b.HashDiff IS NULL;



    END;

GO
