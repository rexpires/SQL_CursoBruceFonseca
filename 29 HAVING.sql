USE ContosoRetailDW

SELECT TOP 1000
	S.ProductKey,
	SUM(S.SalesQuantity) AS QTD_TOTAL
FROM FactSales S
WHERE S.DateKey >= '2009-01-01'
GROUP BY S.ProductKey
HAVING SUM(S.SalesQuantity) < 2000
ORDER BY QTD_TOTAL DESC