USE ContosoRetailDW

SELECT
	S.Channelkey, 
	S.Promotionkey,
	SUM(S.SalesAmount) AS SOMA,
	AVG(S.SALESAMOUNT) AS MEDIA,
	MIN(S.SalesAmount) AS MINIMO,
	MAX(S.SalesAmount) AS MAXIMO,
	COUNT(S.SalesAmount) AS CONTAGEM
FROM FactSales S
GROUP BY S.Channelkey, S.Promotionkey
ORDER BY S.Channelkey, S.Promotionkey