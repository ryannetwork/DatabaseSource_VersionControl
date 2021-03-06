CREATE TABLE [dbo].[CIOX_Recon]
(
[REQUEST_ID] [float] NULL,
[FILE_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FILE_DATE] [datetime] NULL,
[FILE_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_FILENAME] ON [dbo].[CIOX_Recon] ([FILE_NAME]) INCLUDE ([FILE_DATE], [FILE_TYPE], [REQUEST_ID]) ON [PRIMARY]
GO
