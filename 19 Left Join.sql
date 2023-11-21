
SELECT
	COUNT(DISTINCT(ProductKey))
FROM DimProduct 

SELECT
	COUNT(DISTINCT(ProductKey))
FROM FactSales

SELECT DISTINCT
	P.ProductKey,
	P.ProductName,
	S.ProductKey AS 'S.ProductKey'
FROM DimProduct P
LEFT JOIN FactSales S ON S.ProductKey = P.ProductKey
ORDER BY 3