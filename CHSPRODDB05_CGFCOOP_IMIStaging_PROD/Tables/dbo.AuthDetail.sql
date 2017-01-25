CREATE TABLE [dbo].[AuthDetail]
(
[AuthDtlID] [int] NOT NULL IDENTITY(1, 1),
[AuthHeaderID] [int] NULL,
[Client] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ihds_prov_id_servicing] [int] NULL,
[ihds_prov_id_attending] [int] NULL,
[ihds_prov_id_referring] [int] NULL,
[ihds_prov_id_admitting] [int] NULL,
[ihds_prov_id_pcp] [int] NULL,
[MemberID] [int] NOT NULL,
[ihds_member_id] [bigint] NOT NULL,
[MemberGroupID] [int] NULL,
[DateServiceBegin] [datetime] NULL,
[DateIntake] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateRequested] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateReferred] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateReferralReturn] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DatePrimaryAdmit] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateDischargeThru] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DispositionCode] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IPACode] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ServiceTypeCode] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AuthStatusCode] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AuthTypeCode] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Diagnosis1Code] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Diagnosis2Code] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Diagnosis3Code] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SurgProcedure1Code] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SurgProcedure2Code] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SurgProcedure3Code] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerGroupID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberAge] [float] NULL,
[PlanCode] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerMemberID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GenderCode] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerLOB] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CaseManager] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ip_days] [int] NOT NULL,
[ip_admits] [int] NOT NULL,
[ip_discharge] [int] NOT NULL,
[authorized_days_visits] [int] NULL,
[denied_days_visits] [int] NULL,
[requested_days_visits] [int] NULL,
[normal_days_visits] [int] NULL,
[authorized_outpatient_pt_visits] [int] NOT NULL,
[denied_outpatient_pt_visits] [int] NOT NULL,
[authorized_outpatient_visits] [int] NOT NULL,
[denied_outpatient_visits] [int] NOT NULL,
[authorized_dme_visits] [int] NOT NULL,
[denied_dme_visits] [int] NOT NULL,
[authorized_cost] [numeric] (19, 4) NULL,
[auth_count] [int] NOT NULL,
[claim_count] [int] NOT NULL,
[claim_total_paid] [numeric] (19, 4) NOT NULL,
[estimated_cost] [numeric] (19, 4) NOT NULL,
[requested_cost] [numeric] (19, 4) NOT NULL,
[total_est_cost] [numeric] (19, 4) NOT NULL,
[SourceSystem] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuthDetail] ADD CONSTRAINT [pk_AuthDetail] PRIMARY KEY CLUSTERED  ([AuthDtlID]) ON [PRIMARY]
GO
CREATE STATISTICS [sp_pk_AuthDetail] ON [dbo].[AuthDetail] ([AuthDtlID])
GO