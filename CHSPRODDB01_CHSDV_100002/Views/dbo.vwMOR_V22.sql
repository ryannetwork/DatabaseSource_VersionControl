SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE VIEW [dbo].[vwMOR_V22]
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
   (SELECT h.recordsource, c.LoadDate, h.ContractNumber, h.RunDate, h.PaymentYearandMonth, 'V22' AS RecordTypeCode, c.HICN, c.LastName, c.FirstName
	, c.MI, c.DOB, CASE WHEN c.Gender = 2 THEN 'Female' WHEN c.Gender = 1 THEN 'Male' ELSE 'Unknown' END AS Gender, c.SSN
	, CASE WHEN c.F034 = 1 THEN '0_34' 
		  WHEN c.F3544 = 1 THEN '35_44' 
		  WHEN c.F4554 = 1 THEN '45_54' 
		  WHEN c.F5559 = 1 THEN '55_59'
		  WHEN c.F6064 = 1 THEN '60_64'
		  WHEN c.F6569 = 1 THEN '65_69'
		  WHEN c.F7074 = 1 THEN '70_74'
		  WHEN c.F7579 = 1 THEN '75_79' 
		  WHEN c.F8084 = 1 THEN '80_84'
		  WHEN c.F8589 = 1 THEN '85_89'
		  WHEN c.F9094 = 1 THEN '90_94'
		  WHEN c.F95GT = 1 THEN '95_GT'
		  WHEN c.M034 = 1 THEN '0_34'
		  WHEN c.M3544 = 1 THEN '35_44'
		  WHEN c.M4554 = 1 THEN '45_54' 
		  WHEN c.M5559 = 1 THEN '55_59' 
		  WHEN c.M6064 = 1 THEN '60_64' 
		  WHEN c.M6569 = 1 THEN '65_69' 
		  WHEN c.M7074 = 1 THEN '70_74' 
		  WHEN c.M7579 = 1 THEN '75_79'
		  WHEN c.M8084 = 1 THEN '80_84' 
		  WHEN c.M8589 = 1 THEN '85_89' 
		  WHEN c.M9094 = 1 THEN '90_94' 
		  WHEN c.M95GT = 1 THEN '95_GT'
	   END AS AgeGroup
     , CASE WHEN MedicaidFemaleDisabled = 1 THEN 'Y' 
		  WHEN MedicaidMaleDisabled = 1 THEN 'Y' 
		  ELSE 'N' END AS MedicaidDisabled
	, CASE WHEN MedicaidFemaleAged = 1 THEN 'Y'
		  WHEN MedicaidMaleAged = 1 THEN 'Y'
		  ELSE 'N' END AS MedicaidAged
	, CASE WHEN OriginallyDisabledFemale = 1 THEN 'Y' 
		  WHEN OriginallyDisabledMale = 1 THEN 'Y' 
		  WHEN Orginaly_Disabled = 1 THEN 'Y'
		  ELSE 'N' END AS OriginallyDisabled
	, NULLIF(c.HCC001,0) HCC001, NULLIF(c.HCC002,0) HCC002, NULLIF(c.HCC006,0) HCC006, NULLIF(c.HCC008,0) HCC008
	, NULLIF(c.HCC009,0) HCC009, NULLIF(c.HCC010,0) HCC010, NULLIF(c.HCC011,0) HCC011, NULLIF(c.HCC012,0) HCC012, NULLIF(c.HCC017,0) HCC017
	, NULLIF(c.HCC018,0) HCC018, NULLIF(c.HCC019,0) HCC019, NULLIF(c.HCC021,0) HCC021, NULLIF(c.HCC022,0) HCC022, NULLIF(c.HCC023,0) HCC023
	, NULLIF(c.HCC027,0) HCC027, NULLIF(c.HCC028,0) HCC028, NULLIF(c.HCC029,0) HCC029, NULLIF(c.HCC033,0) HCC033, NULLIF(c.HCC034,0) HCC034
	, NULLIF(c.HCC035,0) HCC035, NULLIF(c.HCC039,0) HCC039, NULLIF(c.HCC040,0) HCC040, NULLIF(c.HCC046,0) HCC046, NULLIF(c.HCC047,0) HCC047
	, NULLIF(c.HCC048,0) HCC048, NULLIF(c.HCC054,0) HCC054, NULLIF(c.HCC055,0) HCC055, NULLIF(c.HCC057,0) HCC057, NULLIF(c.HCC058,0) HCC058
	, NULLIF(c.HCC070,0) HCC070, NULLIF(c.HCC071,0) HCC071, NULLIF(c.HCC072,0) HCC072, NULLIF(c.HCC073,0) HCC073, NULLIF(c.HCC074,0) HCC074
	, NULLIF(c.HCC075,0) HCC075, NULLIF(c.HCC076,0) HCC076, NULLIF(c.HCC077,0) HCC077, NULLIF(c.HCC078,0) HCC078, NULLIF(c.HCC079,0) HCC079
	, NULLIF(c.HCC080,0) HCC080, NULLIF(c.HCC082,0) HCC082, NULLIF(c.HCC083,0) HCC083, NULLIF(c.HCC084,0) HCC084, NULLIF(c.HCC085,0) HCC085
	, NULLIF(c.HCC086,0) HCC086, NULLIF(c.HCC087,0) HCC087, NULLIF(c.HCC088,0) HCC088, NULLIF(c.HCC096,0) HCC096, NULLIF(c.HCC099,0) HCC099
	, NULLIF(c.HCC100,0) HCC100, NULLIF(c.HCC103,0) HCC103, NULLIF(c.HCC104,0) HCC104, NULLIF(c.HCC106,0) HCC106, NULLIF(c.HCC107,0) HCC107
	, NULLIF(c.HCC108,0) HCC108, NULLIF(c.HCC110,0) HCC110, NULLIF(c.HCC111,0) HCC111, NULLIF(c.HCC112,0) HCC112, NULLIF(c.HCC114,0) HCC114
	, NULLIF(c.HCC115,0) HCC115, NULLIF(c.HCC122,0) HCC122, NULLIF(c.HCC124,0) HCC124, NULLIF(c.HCC134,0) HCC134, NULLIF(c.HCC135,0) HCC135
	, NULLIF(c.HCC136,0) HCC136, NULLIF(c.HCC137,0) HCC137, NULLIF(c.HCC157,0) HCC157, NULLIF(c.HCC158,0) HCC158, NULLIF(c.HCC161,0) HCC161
	, NULLIF(c.HCC162,0) HCC162, NULLIF(c.HCC166,0) HCC166, NULLIF(c.HCC167,0) HCC167, NULLIF(c.HCC169,0) HCC169, NULLIF(c.HCC170,0) HCC170
	, NULLIF(c.HCC173,0) HCC173, NULLIF(c.HCC176,0) HCC176, NULLIF(c.HCC186,0) HCC186, NULLIF(c.HCC188,0) HCC188, NULLIF(c.HCC189,0) HCC189
	, NULLIF(c.DD_HCC006,0) DD_HCC006, NULLIF(c.DD_HCC034,0) DD_HCC034, NULLIF(c.DD_HCC046,0) DD_HCC046, NULLIF(c.DD_HCC054,0) DD_HCC054
	, NULLIF(c.DD_HCC055,0) DD_HCC055, NULLIF(c.DD_HCC110,0) DD_HCC110, NULLIF(c.DD_HCC176,0) DD_HCC176, NULLIF(c.DD_HCC039,0) DD_HCC039
	, NULLIF(c.DD_HCC077,0) DD_HCC077, NULLIF(c.DD_HCC085,0) DD_HCC085, NULLIF(c.DD_HCC161,0) DD_HCC161
	, NULL AS ESRD
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
	, NULL AS INT1
     , NULL AS INT2
     , NULL AS INT3
     , NULL AS INT4
     , NULL AS INT5
     , NULL AS INT6
	, cl.Client_BK AS CentauriClientID
	, m.Member_BK AS CentauriMemberID
	FROM dbo.H_MOR_Header h 
	INNER JOIN dbo.L_Member_MOR l ON l.H_MOR_Header_RK = h.H_MOR_Header_RK
	INNER JOIN dbo.H_Member m ON m.H_Member_RK = l.H_Member_RK
	INNER JOIN dbo.LS_MOR_CRecord c ON c.L_Member_MOR_RK = l.L_Member_MOR_RK
	CROSS JOIN dbo.H_Client cl 
	WHERE c.RecordEndDate IS NULL ) p
UNPIVOT
   (present FOR HCC IN  
      ( HCC001, HCC002, HCC006, HCC008, HCC009, HCC010, HCC011, HCC012, HCC017, HCC018, HCC019, HCC021, HCC022, HCC023, HCC027, HCC028, HCC029
		, HCC033, HCC034, HCC035, HCC039, HCC040, HCC046, HCC047, HCC048, HCC054, HCC055, HCC057, HCC058, HCC070, HCC071, HCC072, HCC073, HCC074
		, HCC075, HCC076, HCC077, HCC078, HCC079, HCC080, HCC082, HCC083, HCC084, HCC085, HCC086, HCC087, HCC088, HCC096, HCC099, HCC100, HCC103
		, HCC104, HCC106, HCC107, HCC108, HCC110, HCC111, HCC112, HCC114, HCC115, HCC122, HCC124, HCC134, HCC135, HCC136, HCC137, HCC157, HCC158
		, HCC161, HCC162, HCC166, HCC167, HCC169, HCC170, HCC173, HCC176, HCC186, HCC188, HCC189, DD_HCC006, DD_HCC034, DD_HCC046, DD_HCC054
		, DD_HCC055, DD_HCC110, DD_HCC176, DD_HCC039, DD_HCC077, DD_HCC085, DD_HCC161)
)AS unpvt;












GO