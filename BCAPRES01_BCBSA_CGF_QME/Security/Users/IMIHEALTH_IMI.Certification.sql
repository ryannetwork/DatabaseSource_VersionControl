IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'IMIHEALTH\IMI.Certification')
CREATE LOGIN [IMIHEALTH\IMI.Certification] FROM WINDOWS
GO
CREATE USER [IMIHEALTH\IMI.Certification] FOR LOGIN [IMIHEALTH\IMI.Certification]
GO