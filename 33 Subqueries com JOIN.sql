USE ContosoRetailDW

SELECT TOP 5
		S.ProductKey,
		SUM(S.SalesAmount) AS SALES
	FROM FactSales S
	GROUP BY S.ProductKey
	ORDER BY SALES DESC

SELECT 
	S2.*
FROM FactSales S2
INNER JOIN (
	SELECT TOP 5
		S.ProductKey,
		SUM(S.SalesAmount) AS SALES
	FROM FactSales S
	GROUP BY S.ProductKey
	ORDER BY SALES DESC
) AS TOP5 ON TOP5.ProductKey = S2.ProductKey	

-- VALIDAÇÃO TOP 5
SELECT 
	DISTINCT(VAL.ProductKey)
FROM (
	SELECT 
		S2.*
	FROM FactSales S2
	INNER JOIN (
		SELECT TOP 5
			S.ProductKey,
			SUM(S.SalesAmount) AS SALES
		FROM FactSales S
		GROUP BY S.ProductKey
		ORDER BY SALES DESC
	) AS TOP5 ON TOP5.ProductKey = S2.ProductKey	
) AS VAL