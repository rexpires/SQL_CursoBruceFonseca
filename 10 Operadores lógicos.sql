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
WHERE Education = 'High School'
	AND NumberChildrenAtHome >= 4
	AND NOT MaritalStatus = 'M'
	AND (TotalChildren = 3 OR TotalChildren = 4)
ORDER BY 2 DESC, 3 DESC, 4 DESC, [Quantidade de Carros] DESC