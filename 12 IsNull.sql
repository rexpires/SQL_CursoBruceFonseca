USE ContosoRetailDW	

SELECT 
	EmailAddress
	,Gender
	,MaritalStatus
	,TotalChildren
	,NumberChildrenAtHome
	,NumberCarsOwned AS 'Quantidade de Carros'
	,Education
FROM DimCustomer
WHERE 
	MaritalStatus IS NULL