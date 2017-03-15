CREATE TABLE [dbo].[CCAI_834_RAW_MAPD_20160104]
(
[MemberLevelDetail_ResponseCode_INS01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_IndividualRelationshipCode_INS02] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_MaintTypeCode_INS03] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_MaintReasonCode_INS04] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_BenefitStatusCode_INS05] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_MedicareStatusCode_INS06] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_INS07] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_EmploymentStatusCode_INS07] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_RefIDQualifier1_REF01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_RefID1_REF02] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_RefIDQualifier2_REF01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_RefID2_REF02] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_RefIDQualifier3_REF01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_RefID3_REF02] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_DateTimeQualifier1_DTP01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_DateTimeFormat1_DTP02] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_DateTimePeriod1_DTP03] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_DateTimeQualifier2_DTP01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_DateTimeFormat2_DTP02] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLevelDetail_DateTimePeriod2_DTP03] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_EntityIdentifierCode_NM101] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_EntityTypeQualifier_NM102] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_LastName_OrgName_NM103] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_FirstName_NM104] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_NM105] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_NM106] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_NM107] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_IDCodeQualifier_NM108] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_IDCode_NM109] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_ContactFunctionCode_PER01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_PER02] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_CommunicationNumberQualifier_PER03] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_CommunicationNumber_PER04] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_Address_N301] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_CityName_N401] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_StateProvinceCode_N402] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_PostalCode_N403] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_DatTimePeriodFormat_DMG01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_DOB_DMG02] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_Gender_DMG03] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ResponsiblePerson_Code_NM101] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ResponsiblePerson_Type_NM102] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HealthCoverage_MaintTypeCode_HD01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HealthCoverage_ResponsiblePersonType_HD02] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HealthCoverage_InsuranceLineCode_HD03] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HealthCoverage_ResponsiblePersonType_HD04] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HealthCoverage_DateTimeQualifier1_DTP01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HealthCoverage_DateTimeFormat1_DTP02] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HealthCoverage_DateTimePeriod1_DTP03] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_AssignedNumber_LX01] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_EntityIdentifierCode_NM101] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_EntityType_NM102] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_LastName_OrgName_NM103] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_FirstName_NM104] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_EntityIdentifierCode_NM105] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_EntityIdentifierCode_NM106] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_EntityIdentifierCode_NM107] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_IdentificationCodeQualifier_NM108] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_IdentificationCode_NM109] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderInfo_EntityRelationshipCode_NM110] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
