CREATE TABLE [x12].[HierSbr]
(
[HierSbr_RowID] [int] NULL,
[HierSbr_RowIDParent] [int] NULL,
[HierSbr_CentauriClientID] [int] NULL,
[HierSbr_FileLogID] [int] NULL,
[HierSbr_TransactionImplementationConventionReference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_TransactionControlNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_LoopID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_HierarchicalIDNumber_HL01] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_HierarchicalParentIDNumber_HL02] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_HierarchicalLevelCode_HL03] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_HierarchicalChildCode_HL04] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_PayerResponsibilitySequenceNumberCode_SBR01] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_IndividualRelationshipCode_SBR02] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_ReferenceIdentification_SBR03] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_Name_SBR04] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_InsuranceTypeCode_SBR05] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_CoordinationOfBenefitsCode_SBR06] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_YesNoConditionOrResponseCode_SBR07] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_EmploymentStatusCode_SBR08] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_ClaimFilingIndicatorCode_SBR09] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_IndividualRelationshipCode_PAT01] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_PatientLocationCode_PAT02] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_EmploymentStatusCode_PAT03] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_StudentStatusCode_PAT04] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_DateTimePeriodFormatQualifier_PAT05] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_DateImePeriod_PAT06] [varchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_UnitOrBasisForMeasurementCode_PAT07] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_Weight_PAT08] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HierSbr_YesNoConditionOrResponseCode_PAT09] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
