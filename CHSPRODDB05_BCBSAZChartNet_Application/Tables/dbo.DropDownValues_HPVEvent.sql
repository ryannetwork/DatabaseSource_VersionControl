CREATE TABLE [dbo].[DropDownValues_HPVEvent]
(
[HPVEventID] [int] NOT NULL IDENTITY(1, 1),
[DisplayText] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DropDownValues_HPVEvent] ADD CONSTRAINT [PK_DropDownValues_HPVEvent] PRIMARY KEY CLUSTERED  ([HPVEventID]) ON [PRIMARY]
GO
