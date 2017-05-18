CREATE TABLE [dbo].[tblSuspect]
(
[Project_PK] [int] NULL,
[Provider_PK] [int] NULL,
[Member_PK] [int] NULL,
[Suspect_PK] [bigint] NOT NULL IDENTITY(1, 1),
[IsScanned] [bit] NULL,
[IsCNA] [bit] NULL,
[IsCoded] [bit] NULL,
[IsQA] [bit] NULL,
[Scanned_User_PK] [int] NULL,
[CNA_User_PK] [int] NULL,
[Coded_User_PK] [int] NULL,
[QA_User_PK] [int] NULL,
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
[ChaseID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChartPriority] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChartRec_Date] [smalldatetime] NULL,
[InvoiceExt_Date] [smalldatetime] NULL,
[ContractCode] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REN_PROVIDER_SPECIALTY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Channel_PK] [int] NULL,
[ChaseStatus_PK] [int] NULL,
[PlanLID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastContacted] [smalldatetime] NULL,
[FollowUp] [smalldatetime] NULL,
[LinkedSuspect_PK] [bigint] NULL,
[Session_PK] [tinyint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblSuspect] ADD CONSTRAINT [PK_tblSuspect] PRIMARY KEY CLUSTERED  ([Suspect_PK]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idxLinkedSuspect_PK] ON [dbo].[tblSuspect] ([LinkedSuspect_PK]) ON [PRIMARY]
GO
