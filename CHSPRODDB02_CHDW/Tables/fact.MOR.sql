CREATE TABLE [fact].[MOR]
(
[MORID] [int] NOT NULL IDENTITY(1, 1),
[ClientID] [int] NOT NULL,
[MemberID] [int] NOT NULL,
[contractnumber] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RunDate] [int] NULL,
[MORVersion] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[agegroup] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedicaidDisabled] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MedicaidAged] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OriginallyDisabled] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PaymentYearandMonth] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ESRD] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CANCER_IMMUNE] [int] NULL,
[CHF_COPD] [int] NULL,
[CHF_RENAL] [int] NULL,
[COPD_CARD_RESP_FAIL] [int] NULL,
[DIABETES_CHF] [int] NULL,
[SEPSIS_CARD_RESP_FAIL] [int] NULL,
[MEDICAID] [int] NULL,
[DISABLED_PRESSURE_ULCER] [int] NULL,
[ART_OPENINGS_PRESSURE_ULCER] [int] NULL,
[ASP_SPEC_BACT_PNEUM_PRES_ULC] [int] NULL,
[COPD_ASP_SPEC_BACT_PNEUM] [int] NULL,
[SCHIZOPHRENIA_CHF] [int] NULL,
[SCHIZOPHRENIA_COPD] [int] NULL,
[SCHIZOPHRENIA_SEIZURES] [int] NULL,
[SEPSIS_ARTIF_OPENINGS] [int] NULL,
[SEPSIS_ASP_SPEC_BACT_PNEUM] [int] NULL,
[SEPSIS_PRESSURE_ULCER] [int] NULL,
[INT1] [int] NULL,
[INT2] [int] NULL,
[INT3] [int] NULL,
[INT4] [int] NULL,
[INT5] [int] NULL,
[INT6] [int] NULL,
[HCC] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FileName] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreateDate] [datetime] NOT NULL,
[LastUpdate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [fact].[MOR] ADD CONSTRAINT [PK_MOR] PRIMARY KEY CLUSTERED  ([MORID]) ON [PRIMARY]
GO
ALTER TABLE [fact].[MOR] ADD CONSTRAINT [FK_MOR_Client] FOREIGN KEY ([ClientID]) REFERENCES [dim].[Client] ([ClientID])
GO
ALTER TABLE [fact].[MOR] ADD CONSTRAINT [FK_MOR_Member] FOREIGN KEY ([MemberID]) REFERENCES [dim].[Member] ([MemberID])
GO
