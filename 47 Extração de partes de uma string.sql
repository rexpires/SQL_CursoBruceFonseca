
SELECT 
	'SQL � mais legal que PowerBI',
	SUBSTRING('SQL � mais legal que Power BI',1,3),
	SUBSTRING('SQL � mais legal que Power BI',22,9), 
	RIGHT('SQL � mais legal que Power BI',8),
	LEFT('SQL � mais legal que Power BI',3),
	LEFT(RIGHT('SQL � mais legal que Power BI',8),5),
	CHARINDEX('mais','SQL � mais legal que Power BI'),
	LEN('SQL � mais legal que Power BI')