SELECT [TrackId]
      ,[Name]
      ,[AlbumId]
      ,[Milliseconds]
      ,[UnitPrice]
	  ,ROW_NUMBER() OVER(ORDER BY UnitPrice ASC) AS 'ROW_NUMBER'
	  ,RANK() OVER(ORDER BY UnitPrice ASC) AS 'RANK'
	  ,DENSE_RANK() OVER(ORDER BY UnitPrice ASC) AS 'DENSE_RANK'
	  ,NTILE(12) OVER (ORDER BY UnitPrice ASC) AS 'NTILE'
  FROM [Chinook].[dbo].[Track]
   

  SELECT [TrackId]
      ,[Name]
      ,[AlbumId]
      ,[Milliseconds]
      ,[GenreId]
      ,[UnitPrice]
	  ,ROW_NUMBER() OVER(ORDER BY UnitPrice ASC) AS 'ROW_NUMBER'
	  ,RANK() OVER(ORDER BY UnitPrice ASC) AS 'RANK'
	  ,DENSE_RANK() OVER(ORDER BY UnitPrice ASC) AS 'DENSE_RANK'
	  ,NTILE(12) OVER (PARTITION BY GenreId ORDER BY UnitPrice ASC) AS 'NTILE'
  FROM [Chinook].[dbo].[Track]