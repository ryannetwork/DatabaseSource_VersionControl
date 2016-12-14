CREATE TABLE [x12].[LoopSvcLnDrg]
(
[SvcLnDrg_RowID] [int] NULL,
[SvcLnDrg_RowIDParent] [int] NULL,
[SvcLnDrg_CentauriClientID] [int] NULL,
[SvcLnDrg_FileLogID] [int] NULL,
[SvcLnDrg_TransactionImplementationConventionReference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_TransactionControlNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_LoopID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_AssignedIdentification_LIN01] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN02] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN03] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN04] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN05] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN06] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN07] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN08] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN09] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN10] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN11] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN12] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN13] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN14] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN15] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN16] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN17] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN18] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN19] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN20] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN21] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN22] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN23] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN24] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN25] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN26] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN27] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN28] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN29] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceIDQualifier_LIN30] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ProductServiceID_LIN31] [varchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ClassOfTradeCode_CTP01] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_PriceIdentifierCode_CTP02] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_UnitPrice_CTP03] [varchar] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Quantity_CTP04] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_UnitOrBasisForMeasurementCode_CTP05] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_UnitOrBasisForMeasurementCode_CTP0501] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Exponent_CTP0502] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Multiplier_CTP0503] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_UnitOrBasisForMeasurementCode_CTP0504] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Exponent_CTP0505] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Multiplier_CTP0506] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_UnitOrBasisForMeasurementCode_CTP0507] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Exponent_CTP0508] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Multiplier_CTP0509] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_UnitOrBasisForMeasurementCode_CTP0510] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Exponent_CTP0511] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Multiplier_CTP0512] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_UnitOrBasisForMeasurementCode_CTP0513] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Exponent_CTP0514] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Multiplier_CTP0515] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_PriceMultiplierQualifier_CTP06] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_Multiplier_CTP07] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_MonetaryAmount_CTP08] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_BasisOfUnitPriceCode_CTP09] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_ConditionValue_CTP10] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SvcLnDrg_MultiplePriceQuantity_CTP11] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO