CREATE TABLE [dbo].[L_UserSession]
(
[L_UserSession_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[H_User_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_Session_RK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoadDate] [datetime] NULL,
[RecordSource] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RecordEndDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[L_UserSession] ADD CONSTRAINT [PK_L_UserSession] PRIMARY KEY CLUSTERED  ([L_UserSession_RK]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
ALTER TABLE [dbo].[L_UserSession] ADD CONSTRAINT [FK_H_Session_RK] FOREIGN KEY ([H_Session_RK]) REFERENCES [dbo].[H_Session] ([H_Session_RK]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[L_UserSession] ADD CONSTRAINT [FK_H_User_RK7] FOREIGN KEY ([H_User_RK]) REFERENCES [dbo].[H_User] ([H_User_RK]) ON DELETE CASCADE ON UPDATE CASCADE
GO
