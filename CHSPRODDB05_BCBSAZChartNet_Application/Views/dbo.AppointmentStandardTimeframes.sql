SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[AppointmentStandardTimeframes] 
WITH SCHEMABINDING
AS
WITH TimeFrameBase (ID, Descr, StartDate, EndDate) AS
(
	SELECT 1, 'Today''s Appointments', DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 0), DATEADD(MILLISECOND, -2, DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 1))
	UNION
	SELECT 2, '2 Days of Appointments', DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 0), DATEADD(MILLISECOND, -2, DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 2))
	UNION
	SELECT 2, '3 Days of Appointments', DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 0), DATEADD(MILLISECOND, -2, DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 3))
	UNION
	SELECT 10, '1 Week of Appointments', DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 0), DATEADD(MILLISECOND, -2, DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 7))
	UNION
	SELECT 11, '2 Weeks of Appointments', DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 0), DATEADD(MILLISECOND, -2, DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 14))
	UNION
	SELECT 11, '3 Weeks of Appointments', DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 0), DATEADD(MILLISECOND, -2, DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 21))
	UNION
	SELECT 20, '1 Month of Appointments', DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 0), DATEADD(MILLISECOND, -2, DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()), 30))
)
SELECT TOP 100 PERCENT 
		t.ID,
        t.Descr,
        t.StartDate,
        t.EndDate
FROM TimeFrameBase AS t 
ORDER BY ID
GO