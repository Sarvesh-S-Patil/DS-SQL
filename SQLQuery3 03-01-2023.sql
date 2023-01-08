-- Create a table


INSERT INTO dbo.SalesTransaction 
INSERT INTO dbo.SalesTransaction 

SELECT * FROM SalesTransaction 
WHERE SalesTypeDesc = 'Books'

SELECT StoreName,
SalesTypeDesc,
SUM(TotalSalesAmount) as total_sales
FROM SalesTransaction
GROUP BY SalesTypeDesc,StoreName
HAVING
SUM(TotalSalesAmount) > 1000

--- Sample DATA for Examples

SELECT YEAR(OrderDT) AS year_order_dt,

SELECT YEAR(OrderDT) AS OrderYear, 
FROM MyOrder

-- What expression is returned if multiple WHEN expression evaluate to TRUE

UPDATE MyOrder


