USE ContosoRetailDW	

SELECT 
	EmailAddress
	,Gender
	,MaritalStatus
	,TotalChildren
	,NumberChildrenAtHome
	,NumberCarsOwned AS 'Quantidade de Carros'
	,Education
	,BirthDate
FROM DimCustomer
WHERE 
	MaritalStatus IS NOT NULL
	AND TotalChildren BETWEEN 2 AND 4
	AND BirthDate BETWEEN '1950-01-01' AND '1960-01-01'
		
ORDER BY TotalChildren DESC
