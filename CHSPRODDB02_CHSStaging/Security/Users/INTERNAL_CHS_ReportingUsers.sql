IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'INTERNAL\CHS_ReportingUsers')
CREATE LOGIN [INTERNAL\CHS_ReportingUsers] FROM WINDOWS
GO
CREATE USER [INTERNAL\CHS_ReportingUsers] FOR LOGIN [INTERNAL\CHS_ReportingUsers]
GO
