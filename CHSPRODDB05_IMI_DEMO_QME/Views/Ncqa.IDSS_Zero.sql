SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [Ncqa].[IDSS_Zero] WITH SCHEMABINDING AS SELECT 0 AS Zero, '~' AS Tilde, NULL AS NullValue
GO
