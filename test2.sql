
---------Customer----------------
-- CREATE TABLE Customer (
--     id  int,
--     Customer_FName VARCHAR(50),
--     Customer_Lname VARCHAR(100)  
-- );

-- INSERT INTO Customer(id,Customer_FName ,Customer_Lname)
-- VALUES 
--   ('10001', 'John', 'Smith'),
--   ('10002', 'Dave', 'Franklin'),
--   ('10003', 'Febby', 'Johns'),
--   ('10004', 'Mary', 'Gibson'),
--   ('10005', 'Glory', 'Anson');

-- select * from Customer

---------------BUYING---------------------------------

-- CREATE TABLE Buying (
--      Customer_id  int,
--      Product_id int,
--      Order_time date  
-- );

-- INSERT INTO Buying(Customer_id, Product_id  ,Order_time)
-- VALUES 
--   ('10001', '772', '2016/09/01'),
--   ('10002', '774', '2015/08/02'),
--   ('10003', '775', '2017/04/15'),
--   ('10004', '712', '2016/09/28'),
--   ('10005', '772', '2019/07/05');

-- select * from Buying

-------------------Product---------------
-- CREATE TABLE Product (
--     Id  int,
--     Name VARCHAR(50),
--     Address VARCHAR(100)  
-- );
	
-- INSERT INTO Product(Id, Name  ,Address)
-- VALUES 
--   ('772', 'Telephone', '22 Ave,Burwood'),
--   ('774', 'Movie', '33 Flower st, Burwood'),
--   ('775', 'Software Pack', '2 Garden Rd,Geelong'),
--   ('712', 'Book', '20 ave,Burwood ');

-- select * from Product

-----------------Concatination-----------
-- SELECT id, CONCAT(Customer_FName, ' ', Customer_Lname) AS FullName FROM Customer;

-------------Group----------
-- SELECT b.Product_id, COUNT(b.Customer_id) AS num_customers, MIN(b.Order_time) AS first_order_date, MAX(b.Order_time) AS last_order_date
-- FROM Buying b
-- GROUP BY b.Product_id;

--------------- left Join----------
-- SELECT c.id, c.Customer_FName, c.Customer_Lname, b.Product_id, b.Order_time
-- FROM Customer c
-- LEFT JOIN Buying b ON c.id = b.Customer_id;

-----------first 3 records -----------
-- SELECT id, Customer_FName, Customer_Lname
-- FROM Customer
-- ORDER BY id ASC
-- LIMIT 3;

-----------------Display 10003 to 10005 from Buying----------
-- SELECT * FROM Buying WHERE Customer_id BETWEEN 10003 AND 10005 ORDER BY Order_time;

----------Display the table product in descending order-------------
-- SELECT * FROM Product ORDER BY Id DESC;

------. union operation---------------
-- SELECT 'Buying' AS Table_Name, Customer_id AS ID, Product_id AS Product_ID, Order_time AS Time
-- FROM Buying
-- UNION ALL
-- SELECT 'Product' AS Table_Name, Id AS ID, Name AS Product_ID, Address AS Time
-- FROM Product;

-------------Dave and Mary records from customer--------------------------
-- SELECT id, Customer_FName, Customer_Lname
-- FROM Customer
-- WHERE Customer_FName IN ('Dave','Mary') OR Customer_Lname IN ('Franklin','Gibson');

-------------unique constraints--------------
-- ALTER TABLE Customer
-- ADD CONSTRAINT unique_name_combination UNIQUE (Customer_FName, Customer_Lname);

------------------------------------------------------------------------------------------------------------------------
----------Course------------------
--  CREATE TABLE Course2 (
--     course_id  int,
--     course_name VARCHAR(50),
--     Fees bigint,
-- 	Duration date
-- );

-- INSERT INTO Course2(course_id,course_name ,Fees,Duration )
-- VALUES 
--   ('1', 'FSD', '8000','6/04/22'),
--   ('2', 'PGA', '125000','9/04/22'),
--   ('3', 'Cibop', '90000','6/04/22'),
--   ('4', 'Digital marketing', '85000','4/04/22');
  
--   select * from Course2

-----------Imarticus Learning Student_________________
-- CREATE TABLE Student1(
--     Stud_id  int,
--        Stud_name  VARCHAR(50) ,
--     Qualification VARCHAR(50),
--     email VARCHAR(50) ,
-- 	contact int,
-- 	course_id int, 
-- 	DateofJoining date
--  );

-- INSERT INTO Student1(Stud_id, Stud_name,Qualification,email,contact,course_id,DateofJoining )
-- VALUES 
--   ('1', 'Fathima', 'MCA','fathima@gmail.com','43211','1','2024-02-12'),
--   ('2', 'Raveena', 'BSc','raveena@gmail.com','212','2','2024-02-02'),
--   ('3', 'Vinoth', 'MCA','vinoth@gmail.com','213','1','2024-02-17'),
--   ('4', 'Tarun', 'BCom','tarun@gmail.com','214','3','2023-09-24'),
--   ('5', 'Rajesh', 'BCom','rajesh@gmail.com','215','3','2024-02-12'),
--   ('6', 'Kalyani', 'BSc','Kalyani@gmail.com','43216','2','2024-02-12'),
--   ('7', 'Hemanth', 'MSc','hemanth@gmail.com','43217','1','2024-02-12');

--  select * from Student1

------------max fees -------------
-- SELECT MAX(Fees) AS max_fees FROM Course2;

---------- total fees----------------
-- SELECT SUM(Fees) AS total_fees FROM Course2;
--------------fees and duration-----------------
-- SELECT s.Stud_id, s.Stud_name, s.Stud_email, c.Fees, c.Duration
-- FROM Student s
-- JOIN Course2 c ON s.course_id = c.course_id
-- WHERE c.course_name = 'FSD'; 
---------------------------------------
-- SELECT s.Stud_id, s.Stud_name, s.Stud_email, c.course_name, c.Fees, c.Duration
-- FROM Student s
-- JOIN Course2 c ON s.course_id = c.course_id
-- WHERE c.course_name IN ('PGA', 'FSD');

-----------------------------------------------
-- SELECT Stud_id, Stud_name, Qualification, email, contact, course_id, DateofJoining, (SELECT course_name FROM Course2 WHERE Course2.course_id = Student1.course_id) AS Course_name
-- FROM Student1;
---------------------------------------------
-- SELECT *
-- FROM Student1
-- WHERE Stud_id BETWEEN 4 AND 7
-- ORDER BY Stud_id ASC;
----------------------------------------------
-- SELECT Student1.Stud_id, Student1.Stud_name, Student1.Qualification, Student1.email, Student1.contact,
--        Course2.course_name, Course2.Fees, Course2.Duration, Student1.DateofJoining
-- FROM Student1
-- JOIN Course2 ON Student1.course_id = Course2.course_id;

-----------------------------------------------
-- SELECT *
-- FROM Student1
-- WHERE DateofJoining BETWEEN '2023-10-11' AND '2024-02-23';
-- ----------------------------------------------
-- SELECT *
-- FROM Student1
-- WHERE Stud_name LIKE 'R%';


