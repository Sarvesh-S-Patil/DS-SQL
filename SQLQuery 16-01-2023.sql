USE MOVIES

GO  --- This GO tell's SQL SERVER to start a new BatchCREATE PROC [dbo].[myStoredProc]ASBEGINSELECT 	CountryName	,SUM(FilmRunTimeMinutes) AS [TotalRunTime]	,AVG(CAST(FilmRunTimeMinutes AS DECIMAL)) AS [AvgRunTime]FROM	tblCountry AS cINNER JOIN	tblFilm AS fON	c.CountryID = f.FilmCountryIDGROUP BY	CountryNameORDER BY	CountryName ASCEND   --- end of the previously created batchGO    --- start of a new batch

EXEC myStoredProc
GO 
ALTER PROC myStoredProc(@runtime DECIMAL(10,2))
ASBEGINSELECT 	CountryName	,SUM(FilmRunTimeMinutes) AS [TotalRunTime]	,AVG(CAST(FilmRunTimeMinutes AS DECIMAL)) AS [AvgRunTime]FROM	tblCountry AS cINNER JOIN	tblFilm AS fON	c.CountryID = f.FilmCountryIDGROUP BY	CountryNameHAVING 	SUM(FilmRunTimeMinutes) > @runtimeORDER BY	CountryName ASCEND

EXEC myStoredProc 200



GO
ALTER PROC myStoredProc(YEAR(@myDate))
AS
BEGIN 
SELECT 
	CountryName	,SUM(FilmRunTimeMinutes) AS [TotalRunTime]	,AVG(CAST(FilmRunTimeMinutes AS DECIMAL)) AS [AvgRunTime]
FROM
	tblFilm as f
INNER JOIN 
	tblCountry as c
ON
	c.CountryID = f.FilmCountryID
WHERE
	YEAR(FilmReleaseDate) > @myDate


DECLARE @myDate AS DATETIMESET @myDate = '01/01/1970' --- mm/dd/YYYY

SELECT 
	FilmName, FilmReleaseDate
FROM
	tblFilm
WHERE
	FilmReleaseDate > @myDate
ORDER BY 
	FilmReleaseDate
	



