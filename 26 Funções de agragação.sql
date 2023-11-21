USE ContosoRetailDW

--SOMANDO
SELECT
	SUM(SalesAmount)
FROM FactSales

--M�DIA
SELECT
	AVG(SalesAmount)
FROM FactSales

--CONTAGEM
SELECT
	COUNT(SalesAmount)
FROM FactSales

--MAX
SELECT
	MAX(SalesAmount) AS M�XIMO
FROM FactSales

--MIN
SELECT
	MIN(SalesAmount) AS M�NIMO
FROM FactSales