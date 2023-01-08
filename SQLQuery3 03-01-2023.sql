-- Create a tableCREATE TABLE dbo.SalesTransaction    (Id INT IDENTITY PRIMARY KEY   ,CustomerName VARCHAR(65)   ,TotalSalesAmount money   ,SalesTypeDesc VARCHAR(200)   ,SalesDateTime DATETIME   ,StoreName VARCHAR(100));


INSERT INTO dbo.SalesTransaction       VALUES ('John Smith', 124.23,'Software','09/22/2011 11:51:12 AM','The Software Outlet');INSERT INTO dbo.SalesTransaction       VALUES ('Jack Thomas', 29.56,'Computer Supplies','09/23/2011 10:21:49 AM','The Software Outlet');INSERT INTO dbo.SalesTransaction       VALUES ('Sue Hunter', 89.45,'Computer Supplies','09/23/2011 2:51:56 AM','The Software Outlet');INSERT INTO dbo.SalesTransaction       VALUES ('Karla Johnson', 759.12,'Software','09/23/2011 2:54:37 PM','The Software Outlet');      INSERT INTO dbo.SalesTransaction       VALUES ('Gary Clark', 81.51,'Software','09/22/2011 11:08:52 AM','Discount Software');INSERT INTO dbo.SalesTransaction       VALUES ('Scott Crochet', 12345.78,'Computer Supplies','09/23/2011 3:12:37 PM','Discount Software');INSERT INTO dbo.SalesTransaction       VALUES ('Sheri Holtz', 12.34,'Software','09/23/2011 10:51:42 AM','Discount Software');
INSERT INTO dbo.SalesTransaction       VALUES ('Mary Lee', 101.34,'Software','09/23/2011 09:37:19 AM','Discount Software');      INSERT INTO dbo.SalesTransaction       VALUES ('Sally Davisson', 871.12,'Software','09/22/2011 05:21:28 PM','Discount Software');INSERT INTO dbo.SalesTransaction       VALUES ('Rod Kaplan', 2345.19,'Computer Supplies','09/23/2011 5:01:11 PM','Discount Software');INSERT INTO dbo.SalesTransaction       VALUES ('Sandy Roberts', 76.38,'Books','09/23/2011 4:51:57 PM','Computer Books and Software');INSERT INTO dbo.SalesTransaction       VALUES ('Marc Trotter', 562.94,'Software','09/23/2011 6:51:43 PM','Computer Books and Software');

SELECT * FROM SalesTransaction 
WHERE SalesTypeDesc = 'Books'

SELECT StoreName,
SalesTypeDesc,
SUM(TotalSalesAmount) as total_sales
FROM SalesTransaction
GROUP BY SalesTypeDesc,StoreName
HAVING
SUM(TotalSalesAmount) > 1000

--- Sample DATA for ExamplesCREATE TABLE MyOrder (ID int identity, OrderDT date, OrderAmt decimal(10,2), Layaway char(1));INSERT into MyOrder VALUES ('12-11-2012', 10.59,NULL), ('10-11-2012', 200.45,'Y'), ('02-17-2014', 8.65,NULL), ('01-01-2014', 75.38,NULL), ('07-10-2013', 123.54,NULL), ('08-23-2009', 99.99,NULL), ('10-08-2013', 350.17,'N'), ('04-05-2010', 180.76,NULL), ('03-27-2011', 1.49, NULL);

SELECT YEAR(OrderDT) AS year_order_dt,		CASE YEAR(OrderDT)	WHEN 2014 THEN 'Year 1'	WHEN 2013 THEN 'Year 2'	WHEN 2012 THEN 'Year 3'	ELSE	'Year 4 and beyond'	END AS YearTypeFROM MyOrder

SELECT YEAR(OrderDT) AS OrderYear,        CASE   WHEN YEAR(OrderDT) = 2014 THEN 'Year 1'  WHEN YEAR(OrderDT) = 2013 THEN 'Year 2'  WHEN YEAR(OrderDT) = 2012 THEN 'Year 3'  WHEN YEAR(OrderDT) < 2012 THEN 'Year 4 and beyond' 		END AS YearType
FROM MyOrder

-- What expression is returned if multiple WHEN expression evaluate to TRUE	SELECT OrderAmt, 		   CASE 	  WHEN OrderAmt < 100 THEN '< 100 Dollar Order'	  WHEN OrderAmt < 200 THEN '100 Dollar Order'	  WHEN OrderAmt < 300 THEN '200 Dollar Order'	  ELSE  '300 Dollar and above Order' 		  END AS OrderAmt_Category	FROM MyOrder;

UPDATE MyOrderSET Layaway = 'Y'WHEREOrderAmt = 10.59UPDATE MyOrderSET Layaway = 'Y'WHEREOrderAmt = 180.76SELECT OrderAmt,Layaway,CASEWHEN OrderAmt < 100 THEN						CASE							WHEN Layaway = 'Y' THEN '< 100 Dolar Order with Layaway'							ELSE '< 100 Dollar Order without Layaway'						ENDWHEN OrderAmt < 200 THEN						CASE 							WHEN Layaway = 'Y' THEN '< 200 Dolar Order with Layaway'							ELSE '< 200 Dollar Order without Layaway'							ENDWHEN OrderAmt < 300 THEN						CASE 							WHEN Layaway = 'Y' THEN '< 300 Dolar Order with Layaway'							ELSE '< 300 Dollar Order without Layaway'							ENDELSE 'More than 300 Dollar Order'END AS amount_categoryFROMMyOrder



