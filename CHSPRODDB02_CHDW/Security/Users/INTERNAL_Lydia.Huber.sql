IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'INTERNAL\Lydia.Huber')
CREATE LOGIN [INTERNAL\Lydia.Huber] FROM WINDOWS
GO
CREATE USER [INTERNAL\Lydia.Huber] FOR LOGIN [INTERNAL\Lydia.Huber]
GO
