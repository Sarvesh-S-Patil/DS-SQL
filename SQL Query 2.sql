CREATE TABLE doughnut_list

INSERT INTO doughnut_list

SELECT *
FROM doughnut_list
WHERE doughnut_type = 'cruler'

CREATE TABLE easy_drinks

EXEC sp_help easy_drinks

INSERT INTO easy_drinks

INSERT INTO easy_drinks
(
drink_name,
)
VALUES
(
'Hot Cold','peach nectar',3.00,'orange juice',6.00,'pour hot orange juice in a mug and add peach nectar'
)

SELECT * FROM easy_drinks
WHERE main > 'soda'

CREATE TABLE [SET A]


CREATE TABLE [SET B] (Member TINYINT);
INTERSECT
SELECT Member FROM [SET A]

SELECT Member FROM [SET B]
UNION
SELECT Member FROM [SET A]

CREATE TABLE [SET C] (Member TINYINT);

SELECT Member as mem_setA FROM [SET A]
INTERSECT
SELECT Member as mem_setB FROM [SET B]
INTERSECT
SELECT Member as mem_setC FROM [SET C]

SELECT Member as mem_setA FROM [SET A]
UNION
SELECT Member as mem_setB FROM [SET B]
UNION
SELECT Member as mem_setC FROM [SET C]

CREATE TABLE [SET D] (Col1 TINYINT,

CREATE TABLE [SET E] (Col1 TINYINT,

SELECT Col1,Col2 FROM [SET D]
INTERSECT
SELECT Col1,Col3 FROM [SET E]


SELECT Col1,Col2 FROM [SET D]
UNION
SELECT Col1,Col2 FROM [SET E]

SELECT Col1,Col2 FROM [SET D]
EXCEPT
SELECT Col1,Col2 FROM [SET E]

CREATE TABLE [dbo].[Car](

SELECT * FROM Car ORDER BY Make 

CREATE TABLE NumericTest (Name VARCHAR(20), Number VARCHAR(4));