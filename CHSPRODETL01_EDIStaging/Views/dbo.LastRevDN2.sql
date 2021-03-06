SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[LastRevDN2]
AS
select *
from [dbo].[DN2] a
where RevisionId = (select max([RevisionId])
                    from [dbo].[DN2] b 
                    where a.InterchangeId = b.InterchangeId 
                      and a.PositionInInterchange = b.PositionInInterchange
                    )
GO
