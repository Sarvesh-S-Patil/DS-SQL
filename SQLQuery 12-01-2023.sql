CREATE TABLE [dbo].[Orders](	order_id INT,	order_date DATE,	customer_name VARCHAR(250),	city VARCHAR(100),		order_amount MONEY) INSERT INTO [dbo].[Orders]SELECT '1001','04/01/2017','David Smith','GuildFord',10000UNION ALL	  SELECT '1002','04/02/2017','David Jones','Arlington',20000UNION ALL	  SELECT '1003','04/03/2017','John Smith','Shalford',5000UNION ALL	  SELECT '1004','04/04/2017','Michael Smith','GuildFord',15000UNION ALL	  SELECT '1005','04/05/2017','David Williams','Shalford',7000UNION ALL	  SELECT '1006','04/06/2017','Paum Smith','GuildFord',25000UNION ALL	 SELECT '1007','04/10/2017','Andrew Smith','Arlington',15000UNION ALL	  SELECT '1008','04/11/2017','David Brown','Arlington',2000UNION ALL	  SELECT '1009','04/20/2017','Robert Smith','Shalford',1000UNION ALL	  SELECT '1010','04/25/2017','Peter Smith','GuildFord',500

SELECT *
FROM Orders

SELECT 
	city,
	SUM(order_amount)
FROM
	Orders
GROUP BY 
	city


SELECT	Orders.*	,tb1.total_sales	,Orders.order_amount/tb1.total_sales * 100 as [order_amount_percent]FROM( SELECT  --- This is an inner query	city	,SUM(order_amount) AS total_salesFROM	OrdersGROUP BY city) AS tb1INNER JOIN	OrdersON	Orders.city = tb1.city

--- Example of a Common Table ExpressionWITH  temp_tab_1AS(SELECT  --- this is the outer query	Orders.order_id	, Orders.order_date	, Orders.customer_name	, Orders.city	, Orders.order_amount	,tb1.total_salesFROM( SELECT  --- This is an inner query	city	,SUM(order_amount) AS total_salesFROM	OrdersGROUP BY city) AS tb1INNER JOIN	OrdersON	Orders.city = tb1.city)

SELECT 
	*,
	order_amount/total_sales*100 as [order_amount_percent]
FROM
	temp_tab_1


SELECT	order_id	,order_date	,customer_name	,city	,order_amount	,SUM(order_amount) OVER(PARTITION BY CITY) as grand_totalFROM	orders

WITH temp_tab_1AS(	SELECT 		order_id, 		order_date, 		customer_name, 		city, 		order_amount,		AVG(order_amount) OVER(PARTITION BY city, 		MONTH(order_date)) as   average_order_amount 	FROM 
		[dbo].[Orders]
)

SELECT * from temp_tab_1

WITH temp_tab_1AS(SELECT order_id, order_date, customer_name, city, order_amount ,MAX(order_amount) OVER(PARTITION BY city) as maximum_order_amount FROM [dbo].[Orders]
)

SELECT 
	*,
	(maximum_order_amount -  order_amount)/ order_amount*100 as [salary_diff_percent]
FROM 
	temp_tab_1

WITH temp_tab_1
AS
(
SELECT order_id,order_date,customer_name,city, order_amount,ROW_NUMBER() OVER(PARTITION BY city ORDER BY order_amount DESC) [row_number]FROM [dbo].[Orders]
)

SELECT 
	*
FROM 
	temp_tab_1
WHERE
	row_number = 2