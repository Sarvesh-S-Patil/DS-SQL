USE Movies

SELECT * 
FROM tblFilm

SELECT
 TOP 5
	FilmName
	,FilmReleaseDate
	,FilmRunTimeMinutes
	,FilmOscarWins
FROM
	tblFilm
ORDER BY 
	FilmOscarWins DESC


SELECT
 TOP 10
	FilmName
	,FilmReleaseDate
	,FilmRunTimeMinutes
	,FilmOscarWins
FROM
	tblFilm
ORDER BY 
	FilmRunTimeMinutes DESC

SELECT
	FilmName
	,FilmReleaseDate
	,FilmRunTimeMinutes
	,FilmOscarWins

FROM 
	tblFilm
ORDER BY 
	FilmRunTimeMinutes DESC,
	FilmName ASC

SELECT
 TOP 15
	FilmName
	,FilmReleaseDate
	,FilmRunTimeMinutes
	,FilmOscarWins
FROM
	tblFilm
ORDER BY 
	FilmOscarWins DESC

SELECT TOP 10 
	*
FROM tblFilm

-- Calculate the Profit and Loss of the film.
SELECT
	FilmName,
	FilmBoxOfficeDollars,
	FilmBudgetDollars,
	(FilmBoxOfficeDollars -FilmBudgetDollars) AS [FilmProfitLoss]
FROM
	tblFilm



-- TOP 10 Most profit making movies

 SELECT TOP 10
	FilmName,
	FilmBoxOfficeDollars,
	FilmBudgetDollars,
	(FilmBoxOfficeDollars -FilmBudgetDollars) AS [FilmProfitLoss]
FROM
	tblFilm
ORDER BY 
	(FilmBoxOfficeDollars -FilmBudgetDollars) DESC


SELECT TOP 10
	FilmName,
	FilmBoxOfficeDollars,
	FilmBudgetDollars,
	(FilmBoxOfficeDollars -FilmBudgetDollars) AS [FilmProfitLoss]
FROM
	tblFilm
WHERE
	(FilmBoxOfficeDollars -FilmBudgetDollars) < 0 
ORDER BY 
	FilmProfitLoss ASC


-- Let's assume the government taxes the movie at 20% of the box office collection
-- total cost to make a movies is Budget + Tax

SELECT 
	FilmName,
	FilmRunTimeMinutes
FROM
	tblFilm
WHERE 
	FilmRunTimeMinutes <= 120 AND FilmRunTimeMinutes <150
ORDER BY 

SELECT 
	FilmName,
	FilmBoxOfficeDollars
FROM 
	tblFilm
WHERE
	FilmName LIKE '%Matrix_________'


SELECT 
	FilmName,
	FilmBoxOfficeDollars,
	FilmBudgetDollars,
	(0.2*FilmBoxOfficeDollars+FilmBudgetDollars) AS [FilmTotalCost]
FROM 
	tblFilm
