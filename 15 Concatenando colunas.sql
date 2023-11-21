USE ContosoRetailDW	

SELECT
	FirstName + LastName AS 'FullName',
	*
FROM DimEmployee	
