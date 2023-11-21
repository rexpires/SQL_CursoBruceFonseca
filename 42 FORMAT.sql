USE ContosoRetailDW

SELECT 
	GETDATE(),
	FORMAT(GETDATE(), 'HH:mm'),
	FORMAT(GETDATE(), 'yyyy-MM-dd HH:mm:ss')
	