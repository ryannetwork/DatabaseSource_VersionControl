CREATE TABLE [stage].[Suspect_ADV]
(
[CentauriSuspectID] [int] NOT NULL,
[CentauriProjectID] [int] NULL,
[CentauriProviderID] [int] NULL,
[CentauriProviderOfficeID] [int] NULL,
[CentauriMemberID] [int] NULL,
[IsScanned] [bit] NULL,
[IsCNA] [bit] NULL,
[IsCoded] [bit] NULL,
[IsQA] [bit] NULL,
[Scanned_CentauriUserID] [int] NULL,
[CNA_CentauriUserID] [int] NULL,
[Coded_CentauriUserID] [int] NULL,
[QA_CentauriUserID] [int] NULL,
[Scanned_Date] [smalldatetime] NULL,
[CNA_Date] [smalldatetime] NULL,
[Coded_Date] [smalldatetime] NULL,
[QA_Date] [smalldatetime] NULL,
[IsDiagnosisCoded] [bit] NULL,
[IsNotesCoded] [bit] NULL,
[LastAccessed_Date] [smalldatetime] NULL,
[LastUpdated] [smalldatetime] NULL,
[dtCreated] [smalldatetime] NULL,
[IsInvoiced] [bit] NULL,
[MemberStatus] [tinyint] NULL,
[ProspectiveFormStatus] [tinyint] NULL,
[InvoiceRec_Date] [smalldatetime] NULL,
[ChartRec_FaxIn_Date] [smalldatetime] NULL,
[ChartRec_MailIn_Date] [smalldatetime] NULL,
[ChartRec_InComp_Date] [smalldatetime] NULL,
[IsHighPriority] [bit] NULL,
[IsInComp_Replied] [bit] NULL,
[ChaseID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContractCode] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REN_PROVIDER_SPECIALTY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChartPriority] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChartRec_Date] [smalldatetime] NULL,
[InvoiceExt_Date] [smalldatetime] NULL,
[Channel_PK] [int] NULL,
[EDGEMemberID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClientID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RecordSource] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoadDate] [datetime] NULL
) ON [PRIMARY]
GO
