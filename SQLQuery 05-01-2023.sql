USE Movies

SELECT
	SUM(CONVERT(BIGINT,FilmBoxOfficeDollars))
FROM 
	tblFilm

SELECT TOP 10
	*
FROM 
	tblFilm

USE friend_personal_info

SELECT 
	UPPER(LEFT(doughnut_type,1))+RIGHT(doughnut_type,LEN(doughnut_type)-1)
FROM 
	doughnut_list   
	
USE Movies

SELECT

SELECT

SELECT 
	ActorName,
	LEFT(ActorName, CHARINDEX(' ',ActorName)) as [FirstName],
	SUBSTRING(ActorName,CHARINDEX(' ',ActorName)+1,LEN(ActorName)- CHARINDEX(' ',ActorName)) as [LastName]
FROM 
	tblActor
	