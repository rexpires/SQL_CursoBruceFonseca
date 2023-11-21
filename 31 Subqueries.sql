USE ContosoRetailDW

SELECT
	AVG(UNITPRICE)
FROM DimProduct


SELECT
	ProductKey,
	UnitPrice
FROM DimProduct
WHERE UnitPrice <= (SELECT AVG(UNITPRICE) FROM DimProduct)
ORDER BY UnitPrice DESC