USE BikeStores;

SELECT
	P.CategoryID,
	P.BrandID,
	P.Name,
	P.ListPrice,
	COUNT(*) OVER() AS Produtos,
	COUNT(*) OVER(PARTITION BY P.BrandID) AS Produtos_Brand,
	SUM(P.ListPrice) OVER() AS Soma_Precos,
	SUM(P.ListPrice) OVER(PARTITION BY P.BrandID) AS Soma_Precos_Brand,
	AVG(P.ListPrice) OVER() AS Precos_AVG,
	MAX(P.ListPrice) OVER() AS Precos_MAX,
	MIN(P.ListPrice) OVER() AS Precos_MIN
FROM Production.Product P
WHERE P.CategoryID = 1
ORDER BY BrandID