SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--exec prProcessScorekey_FPC 'FPC_Sample'
CREATE proc [dbo].[prProcessScorekey_FPC] 

	@testdeck varchar(10)

as

--declare	@testdeck varchar(10)
--set		@testdeck = 'FPC_Sample'


declare @lccmd			varchar(2000)


--create table ncqa_qi10_rdsm..Scorekey_parse
--(		comma1		int,
--		comma2		int,
--		comma3		int,
--		comma4		int,
--		comma5		int,
--		comma6		int,
--		txt_fld		varchar(200))

truncate table ncqa_qi10_rdsm..Scorekey_parse

set		@lccmd = 
'select	txt_fld'+char(13)+
'from	ncqa_qi10_rdsm..Scorekey_'+@testdeck+'_import'+char(13)+
'where	left(txt_fld,5) <> ''MemID'''
print	@lccmd


insert into ncqa_qi10_rdsm..Scorekey_parse
(txt_fld)
exec (@lccmd)

update ncqa_qi10_rdsm..Scorekey_parse set comma1 = charindex(',',txt_fld,0)
update ncqa_qi10_rdsm..Scorekey_parse set comma2 = charindex(',',txt_fld,comma1+1)
update ncqa_qi10_rdsm..Scorekey_parse set comma3 = charindex(',',txt_fld,comma2+1)
update ncqa_qi10_rdsm..Scorekey_parse set comma4 = charindex(',',txt_fld,comma3+1)
update ncqa_qi10_rdsm..Scorekey_parse set comma5 = charindex(',',txt_fld,comma4+1)
--update ncqa_qi10_rdsm..Scorekey_parse set comma6 = charindex(',',txt_fld,comma5+1)



SET @lcCMD = 'IF OBJECT_ID(''ncqa_qi10_rdsm..Scorekey_'+@testdeck+''') is not null DROP TABLE ncqa_qi10_rdsm..Scorekey_'+@testdeck+''
PRINT @lcCMD
EXEC (@lcCMD)



SET @lcCMD = 
'select	top 0 *'+char(13)+
'into	ncqa_qi10_rdsm..Scorekey_'+@testdeck+char(13)+
'from	ncqa_qi10_rdsm..Scorekey_FPC_Template'
PRINT @lcCMD
EXEC (@lcCMD)


SET @lcCMD = 
'insert into ncqa_qi10_rdsm..Scorekey_'+@testdeck+char(13)+
'select	MemID = left(txt_fld,comma1-1),'+char(13)+
'		Meas  = substring(txt_fld,comma1+1,comma2-comma1-1),'+char(13)+
'		Payer = substring(txt_fld,comma2+1,comma3-comma2-1),'+char(13)+
'		Epop  = substring(txt_fld,comma3+1,comma4-comma3-1),'+char(13)+
'		Expected  = substring(txt_fld,comma4+1,comma5-comma4-1),'+char(13)+
'		Actual    = right(txt_fld,len(txt_fld)-comma5)'+char(13)+
'from	ncqa_qi10_rdsm..Scorekey_parse'
PRINT @lcCMD
EXEC (@lcCMD)
GO
