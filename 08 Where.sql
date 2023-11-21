USE ContosoRetailDW	

SELECT TOP 100 WITH TIES
	EmailAddress
	,Gender
	,MaritalStatus
	,TotalChildren
	,NumberChildrenAtHome
	,NumberCarsOwned AS 'Quantidade de Carros'
	,Education
FROM DimCustomer
WHERE NumberChildrenAtHome = 0
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade de Carros] DESC