USE MOVIES

GO  --- This GO tell's SQL SERVER to start a new Batch

EXEC myStoredProc
GO 
ALTER PROC myStoredProc(@runtime DECIMAL(10,2))
AS

EXEC myStoredProc 200



GO
ALTER PROC myStoredProc(YEAR(@myDate))
AS
BEGIN 
SELECT 
	CountryName
FROM
	tblFilm as f
INNER JOIN 
	tblCountry as c
ON
	c.CountryID = f.FilmCountryID
WHERE
	YEAR(FilmReleaseDate) > @myDate


DECLARE @myDate AS DATETIME

SELECT 
	FilmName, FilmReleaseDate
FROM
	tblFilm
WHERE
	FilmReleaseDate > @myDate
ORDER BY 
	FilmReleaseDate
	


