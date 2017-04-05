CREATE TABLE [BCBSA_GDIT2015].[Member_20170202]
(
[RowID] [int] NOT NULL IDENTITY(1, 1),
[RowFileID] [int] NULL,
[JobRunTaskFileID] [uniqueidentifier] NULL,
[LoadInstanceID] [int] NULL,
[LoadInstanceFileID] [int] NULL,
[ProductID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UniversalMemberID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedicareID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedicaidID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSN] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Confidential] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NameLast] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NameFirst] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NameMiddleInitial] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NameSuffix] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOD] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Gender] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Race] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactLastName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactFirstName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactMiddleInitial] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactGender] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactAddress1] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactAddress2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactCity] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactCounty] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactState] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactZipCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContactTelephone] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Language] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AltLanguage1] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AltLanguage2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Hispanic] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Interpreter] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LanguageSource] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WrittenLanguage] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WrittenLanguageSource] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherLanguage] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherLanguageSource] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RaceSource] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EthnicitySource] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberCustom1] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberCustom2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberCustom3] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberCustom4] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AsOfDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SourceID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
