CREATE TABLE DateDimOld (ID INT IDENTITY, DT DATE, DOWTitle varchar(10));-- Populate DateDimOldINSERT INTO DateDimOld(DT, DOWTitle) VALUES   ('12/1/2013',DATENAME(DW,'12/1/2013')),  ('12/2/2013',DATENAME(DW,'12/2/2013')),  ('12/3/2013',DATENAME(DW,'12/3/2013'));SELECT * FROM DateDimOld;CREATE TABLE DOWTitle (DowTitleID INT IDENTITY PRIMARY KEY, DOWTitle VARCHAR(10));CREATE TABLE DateDimNew (ID INT IDENTITY, DT DATE, DOWTitleID INT);ALTER TABLE DateDimNew  WITH CHECK ADD  CONSTRAINT [FK_DateDimNew_DOWTitle_DOWTitleID] FOREIGN KEY(DOWTitleID)REFERENCES DOWTitle (DOWTitleID)INSERT INTO DOWTitle (DOWTitle) VALUES   (DATENAME(DW,'12/1/2013')),  (DATENAME(DW,'12/2/2013')),  (DATENAME(DW,'12/3/2013'));INSERT INTO DateDimNew (DT,DOWTitleID) VALUES  ('12/1/2013', 1),  ('12/2/2013', 2),  ('12/3/2013', 3);  DROP TABLE DateDimOld

CREATE TABLE DayOfTheWeek(DayOfTheWeek varchar (10),               DayOfTheWeekNum int);INSERT INTO  DayOfTheWeek VALUES    ('Monday',0),    ('Tuesday',1),    ('Wednesday',2),    ('Thursday',3),    ('Friday',4);CREATE VIEW [DisplayDayOfTheWeek] AS SELECT DayOfTheWeek, DayOfTheWeekNum FROM DayOfTheWeekWHERE DayOfTheWeekNum < 5WITH CHECK OPTION;





