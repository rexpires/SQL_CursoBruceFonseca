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
	Education IN ('Graduate Degree','Bachelors')
	AND NumberChildrenAtHome >= 2
	AND NOT MaritalStatus = 'M'
	AND TotalChildren IN (3,4)