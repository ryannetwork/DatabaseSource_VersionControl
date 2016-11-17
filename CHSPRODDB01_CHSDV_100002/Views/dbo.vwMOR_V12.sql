SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE VIEW [dbo].[vwMOR_V12]
AS
SELECT recordsource, LoadDate, contractnumber, RunDate, recordtypecode, HICN, lastname, firstname, mi, dob, gender, ssn, AgeGroup, MedicaidDisabled, MedicaidAged,
       OriginallyDisabled, PaymentYearandMonth
	, CONVERT(VARCHAR(1),ESRD) ESRD
	, [CANCER_IMMUNE]
	, [CHF_COPD]
	, [CHF_RENAL]
	, [COPD_CARD_RESP_FAIL]
	, [DIABETES_CHF]
	, [SEPSIS_CARD_RESP_FAIL]
	, [MEDICAID]
	, [DISABLED_PRESSURE_ULCER]
	, [ART_OPENINGS_PRESSURE_ULCER]
	, [ASP_SPEC_BACT_PNEUM_PRES_ULC]
	, [COPD_ASP_SPEC_BACT_PNEUM]
	, [SCHIZOPHRENIA_CHF]
	, [SCHIZOPHRENIA_COPD]
	, [SCHIZOPHRENIA_SEIZURES]
	, [SEPSIS_ARTIF_OPENINGS]
	, [SEPSIS_ASP_SPEC_BACT_PNEUM]
	, [SEPSIS_PRESSURE_ULCER]
	, INT1
     , INT2
     , INT3
     , INT4
     , INT5
     , INT6
	, CONVERT(VARCHAR(20),HCC) AS HCC
	, CentauriClientID
	, CentauriMemberID
FROM 
   (SELECT h.recordsource, a.LoadDate, h.ContractNumber, h.RunDate, h.PaymentYearandMonth, 'V12' AS RecordTypeCode, a.HICN, a.LastName, a.FirstName
	, a.MI, a.DOB, CASE WHEN a.Gender = 2 THEN 'Female' WHEN a.Gender = 1 THEN 'Male' ELSE 'Unknown' END AS Gender, a.SSN
	, CASE WHEN a.F034 = 1 THEN '0_34' 
		  WHEN a.F3544 = 1 THEN '35_44' 
		  WHEN a.F4554 = 1 THEN '45_54' 
		  WHEN a.F5559 = 1 THEN '55_59'
		  WHEN a.F6064 = 1 THEN '60_64'
		  WHEN a.F6569 = 1 THEN '65_69'
		  WHEN a.F7074 = 1 THEN '70_74'
		  WHEN a.F7579 = 1 THEN '75_79' 
		  WHEN a.F8084 = 1 THEN '80_84'
		  WHEN a.F8589 = 1 THEN '85_89'
		  WHEN a.F9094 = 1 THEN '90_94'
		  WHEN a.F95GT = 1 THEN '95_GT'
		  WHEN a.M034 = 1 THEN '0_34'
		  WHEN a.M3544 = 1 THEN '35_44'
		  WHEN a.M4554 = 1 THEN '45_54' 
		  WHEN a.M5559 = 1 THEN '55_59' 
		  WHEN a.M6064 = 1 THEN '60_64' 
		  WHEN a.M6569 = 1 THEN '65_69' 
		  WHEN a.M7074 = 1 THEN '70_74' 
		  WHEN a.M7579 = 1 THEN '75_79'
		  WHEN a.M8084 = 1 THEN '80_84' 
		  WHEN a.M8589 = 1 THEN '85_89' 
		  WHEN a.M9094 = 1 THEN '90_94' 
		  WHEN a.M95GT = 1 THEN '95_GT'
	   END AS AgeGroup
     , CASE WHEN MedicaidFemaleDisabled = 1 THEN 'Y' 
		  WHEN MedicaidMaleDisabled = 1 THEN 'Y' 
		  ELSE 'N' END AS MedicaidDisabled
	, CASE WHEN MedicaidFemaleAged = 1 THEN 'Y'
		  WHEN MedicaidMaleAged = 1 THEN 'Y'
		  ELSE 'N' END AS MedicaidAged
	, CASE WHEN OriginallyDisabledFemale = 1 THEN 'Y' 
		  WHEN OriginallyDisabledMale = 1 THEN 'Y' 
		  ELSE 'N' END AS OriginallyDisabled
	, NULLIF(HCC1,0) AS HCC1, NULLIF(HCC2,0) AS HCC2, NULLIF(HCC5,0) AS HCC5, NULLIF(HCC7,0) AS HCC7, NULLIF(HCC8,0) AS HCC8
	, NULLIF(HCC9,0) AS HCC9, NULLIF(HCC10,0) AS HCC10, NULLIF(HCC15,0) AS HCC15, NULLIF(HCC16,0) AS HCC16, NULLIF(HCC17,0) AS HCC17
	, NULLIF(HCC18,0) AS HCC18, NULLIF(HCC19,0) AS HCC19, NULLIF(HCC21,0) AS HCC21, NULLIF(HCC25,0) AS HCC25, NULLIF(HCC26,0) AS HCC26
	, NULLIF(HCC27,0) AS HCC27, NULLIF(HCC31,0) AS HCC31, NULLIF(HCC32,0) AS HCC32, NULLIF(HCC33,0) AS HCC33, NULLIF(HCC37,0) AS HCC37
	, NULLIF(HCC38,0) AS HCC38, NULLIF(HCC44,0) AS HCC44, NULLIF(HCC45,0) AS HCC45, NULLIF(HCC51,0) AS HCC51, NULLIF(HCC52,0) AS HCC52
	, NULLIF(HCC54,0) AS HCC54, NULLIF(HCC55,0) AS HCC55, NULLIF(HCC67,0) AS HCC67, NULLIF(HCC68,0) AS HCC68, NULLIF(HCC69,0) AS HCC69
	, NULLIF(HCC70,0) AS HCC70, NULLIF(HCC71,0) AS HCC71, NULLIF(HCC72,0) AS HCC72, NULLIF(HCC73,0) AS HCC73, NULLIF(HCC74,0) AS HCC74
	, NULLIF(HCC75,0) AS HCC75, NULLIF(HCC77,0) AS HCC77, NULLIF(HCC78,0) AS HCC78, NULLIF(HCC79,0) AS HCC79, NULLIF(HCC80,0) AS HCC80
	, NULLIF(HCC81,0) AS HCC81, NULLIF(HCC82,0) AS HCC82, NULLIF(HCC83,0) AS HCC83, NULLIF(HCC92,0) AS HCC92, NULLIF(HCC95,0) AS HCC95
	, NULLIF(HCC96,0) AS HCC96, NULLIF(HCC100,0) AS HCC100, NULLIF(HCC101,0) AS HCC101, NULLIF(HCC104,0) AS HCC104, NULLIF(HCC105,0) AS HCC105
	, NULLIF(HCC107,0) AS HCC107, NULLIF(HCC108,0) AS HCC108, NULLIF(HCC111,0) AS HCC111, NULLIF(HCC112,0) AS HCC112, NULLIF(HCC119,0) AS HCC119
	, NULLIF(HCC130,0) AS HCC130, NULLIF(HCC131,0) AS HCC131, NULLIF(HCC132,0) AS HCC132, NULLIF(HCC148,0) AS HCC148, NULLIF(HCC149,0) AS HCC149
	, NULLIF(HCC150,0) AS HCC150, NULLIF(HCC154,0) AS HCC154, NULLIF(HCC155,0) AS HCC155, NULLIF(HCC157,0) AS HCC157, NULLIF(HCC158,0) AS HCC158
	, NULLIF(HCC161,0) AS HCC161, NULLIF(HCC164,0) AS HCC164, NULLIF(HCC174,0) AS HCC174, NULLIF(HCC176,0) AS HCC176, NULLIF(HCC177,0) AS HCC177
	, NULLIF(DD_HCC5,0) AS DD_HCC5, NULLIF(DD_HCC44,0) AS DD_HCC44, NULLIF(DD_HCC51,0) AS DD_HCC51, NULLIF(DD_HCC52,0) AS DD_HCC52
	, NULLIF(DD_HCC107,0) AS DD_HCC107
	, NULL AS ESRD
	, NULL AS [CANCER_IMMUNE]
	, NULL AS [CHF_COPD]
	, NULL AS [CHF_RENAL]
	, NULL AS [COPD_CARD_RESP_FAIL]
	, NULL AS [DIABETES_CHF]
	, NULL AS [SEPSIS_CARD_RESP_FAIL]
	, NULL AS [MEDICAID]
	, NULL AS [DISABLED_PRESSURE_ULCER]
	, NULL AS [ART_OPENINGS_PRESSURE_ULCER]
	, NULL AS [ASP_SPEC_BACT_PNEUM_PRES_ULC]
	, NULL AS [COPD_ASP_SPEC_BACT_PNEUM]
	, NULL AS [SCHIZOPHRENIA_CHF]
	, NULL AS [SCHIZOPHRENIA_COPD]
	, NULL AS [SCHIZOPHRENIA_SEIZURES]
	, NULL AS [SEPSIS_ARTIF_OPENINGS]
	, NULL AS [SEPSIS_ASP_SPEC_BACT_PNEUM]
	, NULL AS [SEPSIS_PRESSURE_ULCER]
	, INT1
     , INT2
     , INT3
     , INT4
     , INT5
     , INT6
	, cl.Client_BK AS CentauriClientID
	, m.Member_BK AS CentauriMemberID
	FROM dbo.H_MOR_Header h 
	INNER JOIN dbo.L_Member_MOR l ON l.H_MOR_Header_RK = h.H_MOR_Header_RK
	INNER JOIN dbo.H_Member m ON m.H_Member_RK = l.H_Member_RK
	INNER JOIN dbo.LS_MOR_ARecord a ON a.L_Member_MOR_RK = l.L_Member_MOR_RK
	CROSS JOIN dbo.H_Client cl 
	WHERE a.RecordEndDate IS NULL ) p
UNPIVOT
   (present FOR HCC IN  
      ( HCC1, HCC2, HCC5, HCC7, HCC8, HCC9, HCC10, HCC15, HCC16, HCC17, HCC18, HCC19, HCC21, HCC25, HCC26, HCC27, HCC31, HCC32, HCC33, HCC37, HCC38
		, HCC44, HCC45, HCC51, HCC52, HCC54, HCC55, HCC67, HCC68, HCC69, HCC70, HCC71, HCC72, HCC73, HCC74, HCC75, HCC77, HCC78, HCC79, HCC80, HCC81
		, HCC82, HCC83, HCC92, HCC95, HCC96, HCC100, HCC101, HCC104, HCC105, HCC107, HCC108, HCC111, HCC112, HCC119, HCC130, HCC131, HCC132, HCC148
		, HCC149, HCC150, HCC154, HCC155, HCC157, HCC158, HCC161, HCC164, HCC174, HCC176, HCC177, DD_HCC5, DD_HCC44, DD_HCC51, DD_HCC52, DD_HCC107)
)AS unpvt;







GO
