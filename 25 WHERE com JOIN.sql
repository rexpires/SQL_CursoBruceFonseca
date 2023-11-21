USE ContosoRetailDW

SELECT
	S.SalesKey,
	S.SalesAmount,
	ST.StoreKEY,
	ST.StoreName,
	G.ContinentName

FROM FactSales S
INNER JOIN DimStore ST ON ST.StoreKey = S.StoreKey
INNER JOIN DimGeography G ON G.GeographyKey = ST.GeographyKey
WHERE G.ContinentName = 'Europe'
ORDER BY ST.StoreName