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
WHERE 
	S.channelKey IN (1,2) AND
	S.PromotionKey BETWEEN 1 AND 5
GROUP BY S.Channelkey, S.Promotionkey
ORDER BY S.Channelkey, S.Promotionkey