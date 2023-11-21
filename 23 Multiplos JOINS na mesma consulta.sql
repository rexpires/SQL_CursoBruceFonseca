USE ContosoRetailDW

SELECT
	S.SalesKey,
	S.SalesAmount,
	S.ProductKey,
	P.ProductName,
	P.ProductSubcategoryKey,
	SC.ProductSubcategoryName,
	PC.ProductCategoryName
FROM FactSales S
INNER JOIN DimProduct P ON P.ProductKey = S.ProductKey
INNER JOIN DimProductSubcategory SC ON SC.ProductSubcategoryKey = P.ProductSubcategoryKey
INNER JOIN DimProductCategory PC ON PC.ProductCategoryKey = SC.ProductCategoryKey 