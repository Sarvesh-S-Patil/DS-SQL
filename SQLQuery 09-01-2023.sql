USE friend_personal_info

CREATE  TABLE tblDepartment(DepartID INT IDENTITY(1,1) PRIMARY KEY,DeptName NVARCHAR(20) NOT NULL,DeptLocation NVARCHAR(50) NOT NULL);INSERT INTO tblDepartmentVALUES('SQL', 'Mumbai'),('Finance', 'Pune'),('SDM', 'Thane'),('MySQL', 'Chennai'),('DB2', 'Kolkata'),('Oracle', 'Delhi'),('Marketing', 'Delhi'),('Networking', 'Mumbai'),('HR', 'Mumbai');SELECT*FROMtblDepartment;CREATE TABLE tblEmployee(empid INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,firstName NVARCHAR(20) NOT NULL,lastName NVARCHAR(30) NOT NULL,salary BIGINT NOT NULL,department_id INT,FOREIGN KEY(department_id) REFERENCES tblDepartment(DepartID));
INSERT INTO tblEmployeeVALUES('Abshishek', 'Yadav', 37000, 1),('Raj', 'Verma', 47500, 3),('Tony', 'Bell', 44000, 2),('Rahul', 'Sharma', 27000, 4),('Vishal', 'Maurya', 18500, 4),('Jyothi', 'Kakawat', 28000, 5),('Vipin', 'Mehra', 30000, 2),('Pradeep', 'Gupta', 70000, 1),('Sumit', 'Jolly', 55000, 6),('Jolly', 'Mishra', 20000, 6),('Karan', 'Pradeep', 25000, 2),('Aleem', 'Sheik', 35000, 1),('Kavitha', 'Thakur', 30000, 4),('Sufiyan', 'Mukadam', 40000, 6),('Ashish', 'Mehra', 37500, 1),('Mehrul', 'Joshi', 56000, 2),('Payal', 'Yadav', 15000, 5),('Swapnil', 'Patil', 36000, 5),('Richa', 'Patel', 35000, 4),('Mahesh', 'Singh', 33000, 5),('Kaleem', 'Khan', 8000, 4),('Heena', 'Sheikh', 14000, 3),('Rahul', 'Kotian', 26000, 3),('Naveen', 'Kapoor', 37000, 6),('Sanjay', 'Sawant', 65000, 3);

SELECT * FROM tblEmployee

SELECT
	firstName+lastName
FROM 
	tblEmployee

SELECT 
	emp.firstName + ' ' +emp.lastName AS [Full Name]
	,dept.DeptName

FROM
	tblDepartment AS dept
INNER JOIN
	tblEmployee AS emp
ON
	dept.DepartID = emp.department_id


INSERT INTO tblEmployeeVALUES('Purnendu', 'Mukherjee', 55000, NULL),('Akash', 'Deep', 85000, NULL),('Abhishek', 'Singh', 88000, NULL),('Sarvesh', 'Patil', 81000, NULL);

SELECT	*   -- get me all the columns from both the tables. The tables are tblDepartment and tblEmployeeFROM	tblEmployee AS emp LEFT JOIN tblDepartment AS dept -- this will get all the records from the tblDepartment is the left hand side table to the joinON	dept.DepartID = emp.department_id
WHERE
	dept.DepartID is NULL

SELECT	*   -- get me all the columns from both the tables. The tables are tblDepartment and tblEmployeeFROM	tblEmployee AS emp   FULL OUTER  JOIN  tblDepartment AS dept -- this will get all the records from the tblDepartment is the RIGHT hand side table to the joinON	dept.DepartID = emp.department_id

SELECT	*   -- get me all the columns from both the tables. The tables are tblDepartment and tblEmployeeFROM	tblEmployee AS emp   FULL OUTER  JOIN  tblDepartment AS dept ON	dept.DepartID = emp.department_idWHERE	emp.empid IS NULLOR	dept.DepartID IS NULL


CREATE TABLE [dbo].[Orders](	order_id INT,	order_date DATE,	customer_name VARCHAR(250),	city VARCHAR(100),		order_amount MONEY) CREATE TABLE [dbo].[Orders](	order_id INT,	order_date DATE,	customer_name VARCHAR(250),	city VARCHAR(100),		order_amount MONEY) INSERT INTO [dbo].[Orders]SELECT '1001','04/01/2017','David Smith','GuildFord',10000UNION ALL	  SELECT '1002','04/02/2017','David Jones','Arlington',20000UNION ALL	  SELECT '1003','04/03/2017','John Smith','Shalford',5000UNION ALL	  SELECT '1004','04/04/2017','Michael Smith','GuildFord',15000UNION ALL	  SELECT '1005','04/05/2017','David Williams','Shalford',7000UNION ALL	  SELECT '1006','04/06/2017','Paum Smith','GuildFord',25000UNION ALL	 SELECT '1007','04/10/2017','Andrew Smith','Arlington',15000UNION ALL	  SELECT '1008','04/11/2017','David Brown','Arlington',2000UNION ALL	  SELECT '1009','04/20/2017','Robert Smith','Shalford',1000UNION ALL	  SELECT '1010','04/25/2017','Peter Smith','GuildFord',500

SELECT 
	SUM(order_amount),
	city
FROM 
	Orders
GROUP BY 
	city


