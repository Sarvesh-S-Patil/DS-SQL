CREATE TABLE doughnut_list(doughnut_name NVARCHAR(50) NOT NULL,doughnut_type NVARCHAR(6) NOT NULL, doughnut_cost DEC(5,2) NOT NULL DEFAULT 50.0);

INSERT INTO doughnut_list(doughnut_name,doughnut_type,doughnut_cost)VALUES('Bloobery','filled',20.25);SELECT * FROM doughnut_list;INSERT INTO doughnut_list(doughnut_name,doughnut_type)VALUES('Cinnamondo','ring');SELECT * FROM doughnut_list;INSERT INTO doughnut_list(doughnut_name,doughnut_type)VALUES('Rockstar','cruler');INSERT INTO doughnut_list(doughnut_name,doughnut_type)VALUES('Carameller','cruler');INSERT INTO doughnut_listVALUES('Appleblush','filed',140.00)

SELECT *
FROM doughnut_list
WHERE doughnut_type = 'cruler'

CREATE TABLE easy_drinks(drink_name NVARCHAR(50) NOT NULL, main NVARCHAR(50) NOT NULL, amount1 DECIMAL(3,2) NOT NULL DEFAULT 1.5, second_d NVARCHAR(50) NOT NULL, amount2 DECIMAL(3,2) NOT NULL DEFAULT 0.75, directions NVARCHAR(400) NOT NULL);

EXEC sp_help easy_drinks

INSERT INTO easy_drinks(drink_name,main,second_d,amount2,directions)VALUES('Blackthorn','tonic water','pineapple juice',1,'stir with ice, strain into cocktail glass with lemon twist');INSERT INTO easy_drinks(drink_name,main,second_d,directions)VALUES('Blue Moon','soda','blueberry juice','stir with ice, strain into cocktail glass with lemon twist');INSERT INTO easy_drinks(drink_name,main,amount1,second_d,amount2,directions)VALUES('Oh my Gosh','peach nectar',1,'pineapple juice',1,'stir with ice, strain into shot glass');INSERT INTO easy_drinks(drink_name,main,amount1,second_d,amount2,directions)VALUES('Lime Fizz','Sprite',1.5,'lime juice',0.75,'stir with ice, strain into cocktail glass');INSERT INTO easy_drinks(drink_name,main,amount1,second_d,amount2,directions)VALUES('Cold Touch','cherry juice',2,'apricot nectar',7,'serve over ice with straw');INSERT INTO easy_drinks(drink_name,main,amount1,second_d,amount2,directions)VALUES('Lone Tree','soda',1.5,'cherry juice',0.75,'stir with ice, strain into cocktail glass');INSERT INTO easy_drinks(drink_name,main,amount1,second_d,amount2,directions)VALUES('Greyhound','soda',1.5,'grapefuit juice',5,'serve over ice, strain well');INSERT INTO easy_drinks(drink_name,main,amount1,second_d,amount2,directions)VALUES('Indian Summer','apple juice',2,'hot tea',6,'add juice to a mug and top off with hot tea');INSERT INTO easy_drinks(drink_name,main,amount1,second_d,amount2,directions)VALUES('Bull Frog','iced tea',1.5,'lemonade',5,'server over ice with lime slice');INSERT INTO easy_drinks(drink_name,main,amount1,second_d,amount2,directions)VALUES('Soda and it','soda',2,'grape juice',1,'shake in cocktail, no ice');

INSERT INTO easy_drinks
(
drink_name,main,amount1,second_d,amount2,directions
)
VALUES
(
'Hot Cold','peach nectar',3.00,'orange juice',6.00,'pour hot orange juice in a mug and add peach nectar'
)

SELECT * FROM easy_drinks
WHERE main > 'soda'

CREATE TABLE [SET A](member TINYINT);INSERT INTO[SET A]VALUES(1);INSERT INTO [SET A] VALUES (1);INSERT INTO [SET A] VALUES (2);INSERT INTO [SET A] VALUES (3);INSERT INTO [SET A] VALUES (4);INSERT INTO [SET A] VALUES (4);INSERT INTO [SET A] VALUES (5);INSERT INTO [SET A] VALUES (6);INSERT INTO [SET A] VALUES (6);SELECT * FROM [SET A]


CREATE TABLE [SET B] (Member TINYINT);INSERT INTO [SET B] VALUES (5);INSERT INTO [SET B] VALUES (5);INSERT INTO [SET B] VALUES (6);INSERT INTO [SET B] VALUES (7);INSERT INTO [SET B] VALUES (7);INSERT INTO [SET B] VALUES (8);SELECT Member FROM [SET B]
INTERSECT
SELECT Member FROM [SET A]

SELECT Member FROM [SET B]
UNION
SELECT Member FROM [SET A]

CREATE TABLE [SET C] (Member TINYINT);INSERT INTO [SET C] VALUES (5);INSERT INTO [SET C] VALUES (5);INSERT INTO [SET C] VALUES (9);INSERT INTO [SET C] VALUES (8);

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

CREATE TABLE [SET D] (Col1 TINYINT,                      Col2 CHAR(1));INSERT INTO [SET D] VALUES (1,'A');INSERT INTO [SET D] VALUES (1,'B');INSERT INTO [SET D] VALUES (2,'A');INSERT INTO [SET D] VALUES (3,'A');INSERT INTO [SET D] VALUES (4,'A');INSERT INTO [SET D] VALUES (4,'A');INSERT INTO [SET D] VALUES (5,'A');INSERT INTO [SET D] VALUES (6,'A');INSERT INTO [SET D] VALUES (6,'A');

CREATE TABLE [SET E] (Col1 TINYINT,                      Col2 CHAR(1),                      Col3 CHAR(1));INSERT INTO [SET E] VALUES (5,'Z','A');INSERT INTO [SET E] VALUES (5,'Y','C');INSERT INTO [SET E] VALUES (6,'X','B');INSERT INTO [SET E] VALUES (7,'W','A');INSERT INTO [SET E] VALUES (7,'V','A');INSERT INTO [SET E] VALUES (8,'U','A');

SELECT Col1,Col2 FROM [SET D]
INTERSECT
SELECT Col1,Col3 FROM [SET E]


SELECT Col1,Col2 FROM [SET D]
UNION
SELECT Col1,Col2 FROM [SET E]

SELECT Col1,Col2 FROM [SET D]
EXCEPT
SELECT Col1,Col2 FROM [SET E]

CREATE TABLE [dbo].[Car](   [ID] BIGINT IDENTITY(1,1) NOT NULL,   [Make] NVARCHAR(150) NOT NULL,   [Model] NVARCHAR(150) NOT NULL,   [NumOfDoors] TINYINT NOT NULL,   [ModelYear] SMALLINT NOT NULL,   [ColorId] INT  NOT NULL);-- Populate Car TableINSERT INTO Car VALUES ('Ford','Mustang','2','1964',1);INSERT INTO Car VALUES ('ford','F150','2','2010',1);INSERT INTO Car VALUES ('Toyota','Camry','4','2011',1);INSERT INTO Car VALUES ('Ford','Taurus','5','1995',2);INSERT INTO Car VALUES ('ford','F250','2','2010',3);INSERT INTO Car VALUES ('Chevrolet','Volt','4','2010',1);INSERT INTO Car VALUES ('Ford','Focus','4','2012',4);INSERT INTO Car VALUES ('Chevrolet' ,'Aveo','4','2011',2);INSERT INTO Car VALUES ('Chevrolet','Camaro','4','1978',4);INSERT INTO Car VALUES ('Honda','Civic','4','2012',1);INSERT INTO Car VALUES ('Chevrolet','Cruse','4','2012',1);INSERT INTO Car VALUES ('Toyota','Rav4','5','2000',1);SELECT * FROM [dbo].[Car]SELECT Make,Model,ModelYear FROM [dbo].[Car]ORDER BY ModelYear ASCSELECT Make,Model,ModelYear FROM [dbo].[Car]ORDER BY ModelYear ASC,Make DESC;

SELECT * FROM Car ORDER BY Make COLLATE SQL_Latin1_General_CP1_CS_AS DESC

CREATE TABLE NumericTest (Name VARCHAR(20), Number VARCHAR(4));-- Since the Number column is defined as a varchar(4) SQL Server sorted this column alphabetically,-- even though this column only contains numbers.INSERT INTO NumericTest VALUES ('One','1');INSERT INTO NumericTest VALUES ('One Thousand','1000');INSERT INTO NumericTest VALUES ('Two','2');INSERT INTO NumericTest VALUES ('Twenty' ,'20');INSERT INTO NumericTest VALUES('Ten','10');
