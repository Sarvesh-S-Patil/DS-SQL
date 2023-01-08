CREATE TABLE Genes(	gene_id INT NOT NULL PRIMARY KEY	, gene NVARCHAR(100));CREATE TABLE patient(	patent_id INT NOT NULL PRIMARY KEY	,patient_name NVARCHAR(100)	,gene_id INT)

ALTER TABLE PatientADD CONSTRAINT FK_gene_idFOREIGN KEY (gene_id) REFERENCES Genes(gene_id)

exec sp_help Patient

INSERT INTO GenesVALUES(1, 'aaabbgg'),(2, 'cccgghh');

SELECT *
FROM Genes

SELECT 
	FilmName,
	FilmOscarWins = (
					SELECT 
						MAX(FilmOscarWins)
					FROM 
						tblFilm
					)
FROM 
	 tblFilm
ORDER BY 
	FilmReleaseDate


SELECT 
	FilmName,
	FilmRunTimeMinutes
FROM
	tblFilm
WHERE 
		FilmRunTimeMinutes >= (
							SELECT 
								 AVG(FilmRunTimeMinutes)
							FROM
								tblFilm
						)

-- Show film whose budgets were greater than the biggest budget before 2000
--- Select if some other film has been released on the same date as Casino

SELECT
	FilmName,
	FilmBudgetDollars
FROM 
	tblFilm
WHERE 
	FilmBudgetDollars > (
						SELECT 
							MAX(FilmBudgetDollars)
						FROM 
							tblFilm
						WHERE 
							YEAR(FilmReleaseDate) < 2000
						)

SELECT 
	FilmName,
	FilmReleaseDate
FROM 
	tblFilm
WHERE 
	FilmReleaseDate = (
						SELECT 
							FilmReleaseDate
						FROM
							tblFilm
						WHERE 
							FilmName = 'Casino'
						)



SELECT
	FilmName,
	FilmDirectorID
FROM 
	tblFilm
WHERE
	FilmDirectorID  IN (
					SELECT
						DirectorID
					FROM
						tblDirector
					WHERE 
						YEAR(DirectorDOB) = 1946
					)

--- find the movie name and director name whose box office collection > avg box office collection

SELECT 
	FilmName,
	DirectorName
FROM
	tblFilm
INNER JOIN 
	tblDirector
ON
	tblFilm.FilmDirectorID = tblDirector.DirectorID
WHERE 
	FilmBoxOfficeDollars >(
							SELECT 
								AVG(CONVERT(float, FilmBoxOfficeDollars))
							FROM
								tblFilm
							)
			