SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--	a_ca_insertExtractedIndex @invoice, @id,	@file, @user
CREATE PROCEDURE [dbo].[a_ca_insertExtractedIndex] 
	@invoice tinyint,
	@id bigint,
	@file varchar(50),
	@user int
AS
BEGIN
	DECLARE @ChaseStatusPK AS INT = 1
	IF (@invoice = 0)
	BEGIN
-----------Transaction Starts-------------------
			RETRY_SD: -- Transaction RETRY
			BEGIN TRANSACTION
			BEGIN TRY
				INSERT INTO tblScannedData(Suspect_PK,DocumentType_PK,[FileName],User_PK,dtInsert,is_deleted) 
					VALUES(@id,1,@file,@user,GETDATE(),0)
				COMMIT TRANSACTION
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				IF ERROR_NUMBER() = 1205 -- Deadlock Error Number
				BEGIN
					WAITFOR DELAY '00:00:00.05' -- Wait for 5 ms
					GOTO RETRY_SD -- Go to Label RETRY
				END
			END CATCH
-----------Transaction Starts-------------------

		IF EXISTS (SELECT * FROM tblSuspectLevelCoded WITH (NOLOCK) WHERE Suspect_PK=@id)			
		BEGIN			
-----------Transaction Starts-------------------
			RETRY_SCL: -- Transaction RETRY
			BEGIN TRANSACTION
			BEGIN TRY
				UPDATE tblSuspectLevelCoded SET ReceivedAdditionalPages=1 WHERE Suspect_PK=@id
				COMMIT TRANSACTION
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				IF ERROR_NUMBER() = 1205 -- Deadlock Error Number
				BEGIN
					WAITFOR DELAY '00:00:00.05' -- Wait for 5 ms
					GOTO RETRY_SCL -- Go to Label RETRY
				END
			END CATCH
-----------Transaction Starts-------------------
		END

		IF EXISTS (SELECT * FROM tblSuspect WITH (NOLOCK) WHERE Suspect_PK=@id AND Scanned_User_PK IS NULL)
		BEGIN			
-----------Transaction Starts-------------------
			RETRY_Suspect: -- Transaction RETRY
			BEGIN TRANSACTION
			BEGIN TRY
				SELECT TOP 1 @ChaseStatusPK = ChaseStatus_PK FROM tblChaseStatus WHERE IsExtracted=1
				Update tblSuspect SET IsScanned=1, Scanned_Date=GETDATE(), Scanned_User_PK = @user, ChaseStatus_PK=@ChaseStatusPK,IsCNA=0,CNA_Date=NULL,CNA_User_PK=NULL,FollowUp=NULL WHERE Suspect_PK=@id Or LinkedSuspect_PK=@id
				COMMIT TRANSACTION
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				IF ERROR_NUMBER() = 1205 -- Deadlock Error Number
				BEGIN
					WAITFOR DELAY '00:00:00.05' -- Wait for 5 ms
					GOTO RETRY_Suspect -- Go to Label RETRY
				END
			END CATCH
-----------Transaction Starts-------------------
		END
	END
	ELSE
	BEGIN
-----------Transaction Starts-------------------
			RETRY_SDI: -- Transaction RETRY
			BEGIN TRANSACTION
			BEGIN TRY
				SELECT TOP 1 @ChaseStatusPK = ChaseStatus_PK FROM tblChaseStatus WHERE IsScheduled=1
				INSERT INTO tblScannedDataInvoice(ProviderOfficeInvoice_PK,[FileName],User_PK,dtInsert,is_deleted)
					VALUES(@id,@file,@user,GETDATE(),0)

				Update tblSuspect SET InvoiceExt_Date=GetDate(),ChaseStatus_PK=CASE WHEN IsCNA=0 AND IsCoded=0 AND IsScanned=0 THEN @ChaseStatusPK ELSE ChaseStatus_PK END WHERE Suspect_PK=@id
				COMMIT TRANSACTION
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
				IF ERROR_NUMBER() = 1205 -- Deadlock Error Number
				BEGIN
					WAITFOR DELAY '00:00:00.05' -- Wait for 5 ms
					GOTO RETRY_SDI -- Go to Label RETRY
				END
			END CATCH
-----------Transaction Starts-------------------
	END
END
GO
