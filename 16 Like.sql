USE ContosoRetailDW	

SELECT
	FirstName + ' ' + LastName AS 'FullName',
	*
FROM DimEmployee
WHERE FirstName + ' ' + LastName LIKE 'Aaron%' 