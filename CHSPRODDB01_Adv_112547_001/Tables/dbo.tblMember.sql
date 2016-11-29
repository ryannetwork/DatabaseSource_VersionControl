CREATE TABLE [dbo].[tblMember]
(
[Member_PK] [bigint] NOT NULL IDENTITY(1, 1),
[HICNumber] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_ID] [varchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Lastname] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Firstname] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [date] NULL,
[Gender] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZipCode_PK] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Contact_Number] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Segment_PK] [tinyint] NULL,
[ChartPriority] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ref_Number] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Latitude] [float] NULL,
[Longitude] [float] NULL,
[parent_gardian] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[preferred_practitioner_gender] [tinyint] NULL,
[Cell_Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email_Address] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[does_not_speak_english] [bit] NULL,
[unable_to_determine_language] [bit] NULL,
[speaking_language] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[language_line_will_be_required_for_the_visit] [bit] NULL,
[plan_unable_to_validate_client_vendor_relationship] [bit] NULL,
[preferred_method_of_contact] [tinyint] NULL,
[permission_to_leave_voicemail] [bit] NULL,
[Orig_Address] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Orig_ZipCode_PK] [int] NULL,
[Orig_Contact_Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Orig_Email_Address] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[place_of_assessment_is_not_members_home] [bit] NULL,
[Home_Address] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Home_ZipCode_PK] [int] NULL,
[Home_Contact_Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Home_Email_Address] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[members_power_of_attorney] [bit] NULL,
[POA_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POA_Address] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POA_ZipCode_PK] [int] NULL,
[POA_Contact_Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POA_Email_Address] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Client_PK] [tinyint] NULL,
[Eff_Date] [date] NULL,
[Exp_Date] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblMember] ADD CONSTRAINT [PK_tblMember] PRIMARY KEY CLUSTERED  ([Member_PK]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_MemberPK] ON [dbo].[tblMember] ([Member_PK]) INCLUDE ([DOB], [Firstname], [Lastname], [Member_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_tblMember_37_453576654__K14] ON [dbo].[tblMember] ([Segment_PK]) ON [PRIMARY]
GO
CREATE STATISTICS [_dta_stat_453576654_14_1] ON [dbo].[tblMember] ([Segment_PK], [Member_PK])
GO
