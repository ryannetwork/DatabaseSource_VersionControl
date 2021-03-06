CREATE TABLE [stage].[MemberDetail_ADV]
(
[CentauriMemberID] [int] NOT NULL,
[Latitude] [float] NULL,
[Longitude] [float] NULL,
[parent_gardian] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[preferred_practitioner_gender] [tinyint] NULL,
[does_not_speak_english] [bit] NULL,
[unable_to_determine_language] [bit] NULL,
[speaking_language] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[language_line_will_be_required_for_the_visit] [bit] NULL,
[plan_unable_to_validate_client_vendor_relationship] [bit] NULL,
[preferred_method_of_contact] [tinyint] NULL,
[permission_to_leave_voicemail] [bit] NULL,
[place_of_assessment_is_not_members_home] [bit] NULL,
[members_power_of_attorney] [bit] NULL,
[POA_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Client_PK] [tinyint] NULL,
[Eff_Date] [date] NULL,
[Exp_Date] [date] NULL,
[RecordSource] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClientID] [int] NULL,
[LoadDate] [datetime] NULL
) ON [PRIMARY]
GO
