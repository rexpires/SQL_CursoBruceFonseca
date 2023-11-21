USE AdventureWorksDW2022;

/*SELECT DISTINCT
	CustomerKey
FROM FactInternetSales	


SELECT 
	SUM(SalesAmount)
FROM FactInternetSales	


SELECT 
	AVG(SalesAmount)
FROM FactInternetSales	
*/

SELECT 
	SUM(SalesAmount),
	OrderDate,
	DueDateKey
FROM FactInternetSales
INNER JOIN DimDate ON DimDate.DateKey = FactInternetSales.DueDateKey
WHERE DueDateKey like '2013%'	
GROUP BY OrderDate

