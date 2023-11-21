USE ContosoRetailDW

SELECT 
	G.RegionCountryName,
	ST.StoreName,
	SUM(S.SalesQuantity) AS QTD_TOTAL
FROM FactSales S
INNER JOIN DimStore ST ON ST.StoreKey = S.StoreKey
INNER JOIN DimGeography G ON G.GeographyKey = ST.GeographyKey
GROUP BY G.RegionCountryName, ST.StoreName
WITH ROLLUP