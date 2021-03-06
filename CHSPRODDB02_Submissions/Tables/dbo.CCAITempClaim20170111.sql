CREATE TABLE [dbo].[CCAITempClaim20170111]
(
[CCAITempId] [int] NOT NULL,
[ClaimId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimLine] [int] NULL,
[ClaimType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ServiceDateBegins] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ServiceDateEnds] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CheckNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CheckDate] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReceiptDate] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SubscriberId] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PatientName] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineOfBusiness] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SubLineOfBusiness] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LobType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Eligibility] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NetworkId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RiskPool] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RenderingNpi] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PayToProvider] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PayToNPI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PayToTaxId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineBilledAmount] [money] NULL,
[LineAdjudicatedAmount] [money] NULL,
[LineDeductibleAmount] [money] NULL,
[LineCoinsuranceAmount] [money] NULL,
[LineCopayAmount] [money] NULL,
[LinePaidAmount] [money] NULL,
[PriorAuthorizationNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimStatusCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimStatusDescription] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FacilityType] [int] NULL,
[BillClassCode] [int] NULL,
[FrequencyCode] [int] NULL,
[TypeOfBill] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SubmittedDRGCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ComputedDRG] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CptProfessional] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PlaceOfService] [int] NULL,
[RevenueCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CptInstitutional] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dx1] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dx2] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dx3] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dx4] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dx5] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dx6] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dx7] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dx8] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dx9] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dx10] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CCAITempClaim20170111] ADD CONSTRAINT [PK_CCAITempClaim20170111] PRIMARY KEY CLUSTERED  ([CCAITempId]) ON [PRIMARY]
GO
