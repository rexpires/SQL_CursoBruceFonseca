USE ContosoRetailDW

--IN
SELECT
	*
FROM FactSales S
WHERE S.ProductKey IN (
	SELECT
		ProductKey
	FROM DimProduct
	WHERE UnitPrice <= (SELECT AVG(UNITPRICE) FROM DimProduct)
)
ORDER BY UnitPrice DESC

--NOT IN
SELECT
	*
FROM FactSales S
WHERE S.ProductKey NOT IN (
	SELECT
		ProductKey
	FROM DimProduct
	WHERE UnitPrice <= (SELECT AVG(UNITPRICE) FROM DimProduct)
)
ORDER BY UnitPrice ASC