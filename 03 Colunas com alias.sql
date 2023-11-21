USE ContosoRetailDW

SELECT
	StoreKey AS 'Código da Loja'
	,StoreName AS 'Nome da Loja'
	,EmployeeCount AS 'Quantidade de Funcionários'
FROM DimStore
