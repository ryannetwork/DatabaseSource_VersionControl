SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE FUNCTION [dbo].[SafeCharactersOnly] (@text [nvarchar] (max))
RETURNS [nvarchar] (max)
WITH EXECUTE AS CALLER
EXTERNAL NAME [IMI.MeasureEngine.Data.SqlClr].[IMI.MeasureEngine.Data.SqlClr.StringFunctions].[SafeCharactersOnly]
GO
GRANT EXECUTE ON  [dbo].[SafeCharactersOnly] TO [Processor]
GO
