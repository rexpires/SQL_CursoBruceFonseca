USE ContosoRetailDW

--SOMANDO
SELECT
	SUM(SalesAmount)
FROM FactSales

--MÉDIA
SELECT
	AVG(SalesAmount)
FROM FactSales

--CONTAGEM
SELECT
	COUNT(SalesAmount)
FROM FactSales

--MAX
SELECT
	MAX(SalesAmount) AS MÁXIMO
FROM FactSales

--MIN
SELECT
	MIN(SalesAmount) AS MÍNIMO
FROM FactSales