
SELECT 
	'SQL é mais legal que PowerBI',
	SUBSTRING('SQL é mais legal que Power BI',1,3),
	SUBSTRING('SQL é mais legal que Power BI',22,9), 
	RIGHT('SQL é mais legal que Power BI',8),
	LEFT('SQL é mais legal que Power BI',3),
	LEFT(RIGHT('SQL é mais legal que Power BI',8),5),
	CHARINDEX('mais','SQL é mais legal que Power BI'),
	LEN('SQL é mais legal que Power BI')