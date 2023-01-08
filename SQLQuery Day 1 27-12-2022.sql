CREATE DATABASE friend_personal_info

USE friend_personal_info;
CREATE TABLE friends_information ---- The command given to SQL to create a table( ---- Open the parenthesisfriend_name NVARCHAR(100)NOT NULL,  --- I have defined a column called friend_name and defined the datatype as NVARCHAR with length 100dob  DATE NOT NULL,friend_address NVARCHAR(300)NOT NULL, --- textual data can be represented using the NVARCHAR data type. in this class i will use the word String to refer to text datafriend_phone CHAR(10)NOT NULL, ----- CHAR represents CHARACTER and it will have 10 longfriend_email NVARCHAR(100));
EXEC sp_help friends_information

INSERT INTO  friends_information(friend_name,dob,friend_address,friend_phone,friend_email)VALUES('Rohit','1987-02-22','H31, Navi Mumbai','9998889999','rohit@gmail.com');SELECT * FROM friends_information
INSERT INTO  friends_information(friend_email,friend_address,dob,friend_phone,friend_name)VALUES('vivek@gmail.com','G78/1, Madurai, TN','1988-10-20','6667776666','Vivek');

SELECT * FROM friends_information

INSERT INTO friends_informationVALUES('Bindiya','1988-06-22','B35 Kolkata WB','5556664444','bindiya@gmail.com');

SELECT * From friends_information
WHERE 
friend_name = 'Vivek';






