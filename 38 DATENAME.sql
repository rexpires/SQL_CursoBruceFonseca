USE ContosoRetailDW

SELECT TOP 100
	S.DateKey,
	DATENAME(DAY, S.DateKey) AS DIA,
	DATENAME(WEEKDAY, S.DateKey) AS DIA_SEMANA,
	DATENAME(MONTH, S.DateKey) AS MES
FROM FactOnlineSales S
ORDER BY S.DateKey DESC