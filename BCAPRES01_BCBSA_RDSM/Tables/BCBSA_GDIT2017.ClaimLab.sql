CREATE TABLE [BCBSA_GDIT2017].[ClaimLab]
(
[RowID] [int] NOT NULL IDENTITY(1, 1),
[RowFileID] [int] NULL,
[JobRunTaskFileID] [uniqueidentifier] NULL,
[LoadInstanceID] [int] NULL,
[LoadInstanceFileID] [int] NULL,
[SourceID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimLineNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdjustmentSequenceNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProductID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TypeBillCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PlaceOfServiceCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimTypeCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRGVersion] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRGCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DischargeStatus] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MedicalClass] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Denied] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EpisodeOfIllness] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdmitDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DischargeDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstServiceDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastServiceDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimFromDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimThroughDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClaimProcessedDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdmitCount] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CoveredDays] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DiagnosisVersionCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrimaryDiagnosis] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrimaryDiagnosisPOAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdmittingDiagnosis] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdmittingDiagnosisPOAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis1] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis1POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis2POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis3] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis3POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis4] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis4POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis5] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis5POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis6] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis6POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis7] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis7POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis8] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis8POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis9] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis9POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis10] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis10POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis11] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis11POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis12] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis12POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis13] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis13POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis14] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis14POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis15] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis15POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis16] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis16POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis17] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis17POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis18] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis18POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis19] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis19POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis20] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis20POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis21] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis21POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis22] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis22POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis23] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis23POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis24] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SecondaryDiagnosis24POAFlag] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProcedureVersionCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrincipalProcedureCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrincipalProcedureCodeDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode1] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode1Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode2Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode3] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode3Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode4] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode4Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode5] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode5Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode6] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode6Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode7] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode7Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode8] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode8Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode9] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode9Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode10] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode10Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode11] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode11Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode12] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode12Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode13] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode13Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode14] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode14Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode15] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode15Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode16] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode16Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode17] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode17Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode18] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode18Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode19] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode19Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode20] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode20Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode21] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode21Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode22] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode22Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode23] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode23Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode24] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherProcedureCode24Date] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RevenueCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineProcedureCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineProcedureCodeModifier] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineProcedureCodeModifier2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineProcedureCodeModifier3] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineProcedureCodeModifier4] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Units] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BilledAmt] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AllowedAmt] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AltAmount1] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AltAmount2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOINCCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TestResults] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TestResults2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NDCCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DrugServiceDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TreatmentLength] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ToothNum] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DataSourceType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SupplementalDataSource] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AuditorApprovedInd] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AsOfDate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
