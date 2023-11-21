USE ContosoRetailDW

SELECT DISTINCT
	P.ProductKey,
	P.ProductName,
	S.ProductKey AS 'S.ProductKey'
FROM DimProduct P
RIGHT JOIN FactSales S ON S.ProductKey = P.ProductKey
ORDER BY 3