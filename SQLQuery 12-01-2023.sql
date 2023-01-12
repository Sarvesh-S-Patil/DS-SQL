CREATE TABLE [dbo].[Orders]

SELECT *
FROM Orders

SELECT 
	city,
	SUM(order_amount)
FROM
	Orders
GROUP BY 
	city


SELECT

--- Example of a Common Table Expression

SELECT 
	*,
	order_amount/total_sales*100 as [order_amount_percent]
FROM
	temp_tab_1


SELECT

WITH temp_tab_1
		[dbo].[Orders]
)

SELECT * from temp_tab_1

WITH temp_tab_1
)

SELECT 
	*,
	(maximum_order_amount -  order_amount)/ order_amount*100 as [salary_diff_percent]
FROM 
	temp_tab_1

WITH temp_tab_1
AS
(
SELECT order_id,order_date,customer_name,city, order_amount,
)

SELECT 
	*
FROM 
	temp_tab_1
WHERE
	row_number = 2