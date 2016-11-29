CREATE TABLE [dbo].[tblUser]
(
[User_PK] [int] NOT NULL IDENTITY(1, 1),
[Username] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Password] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Lastname] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Firstname] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email_Address] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsAdmin] [bit] NULL,
[IsScanTech] [bit] NULL,
[IsScheduler] [bit] NULL,
[IsReviewer] [bit] NULL,
[IsQA] [bit] NULL,
[IsHRA] [bit] NULL,
[IsActive] [bit] NULL,
[only_work_selected_hours] [bit] NULL,
[only_work_selected_zipcodes] [bit] NULL,
[deactivate_after] [smalldatetime] NULL,
[linked_provider_id] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[linked_provider_pk] [bigint] NULL,
[IsClient] [bit] NULL CONSTRAINT [DF__tblUser__IsClien__48BAC3E5] DEFAULT ((0)),
[sch_Name] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sch_Tel] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sch_Fax] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsSchedulerSV] [bit] NULL,
[IsScanTechSV] [bit] NULL,
[IsChangePasswordOnFirstLogin] [bit] NULL,
[Location_PK] [tinyint] NULL,
[isQCC] [bit] NULL,
[willing2travell] [smallint] NULL,
[is_male] [bit] NULL,
[address] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[zipcode_pk] [int] NULL,
[Latitude] [float] NULL,
[Longitude] [float] NULL,
[linked_scheduler_user_pk] [int] NULL,
[EmploymentStatus] [tinyint] NULL,
[EmploymentAgency] [tinyint] NULL,
[isAllowDownload] [bit] NULL,
[CoderLevel] [tinyint] NULL,
[IsSchedulerManager] [bit] NULL,
[IsInvoiceAccountant] [bit] NULL,
[IsBillingAccountant] [bit] NULL,
[IsManagementUser] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblUser] ADD CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED  ([User_PK]) ON [PRIMARY]
GO
CREATE STATISTICS [_dta_stat_373576369_15_1_7] ON [dbo].[tblUser] ([only_work_selected_zipcodes], [User_PK], [IsAdmin])
GO
CREATE STATISTICS [_dta_stat_373576369_1_7] ON [dbo].[tblUser] ([User_PK], [IsAdmin])
GO
