-- Table Clauses : Clauses used to define some conditions

-- create a DB
CREATE DATABASE TableClauses;

-- Use created DB
USE TableClauses;

-- Create a table if student details
CREATE TABLE StudentDetails(
	RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT,
    Grade CHAR(1),
    City VARCHAR(50)
);

-- Add values into above list
INSERT INTO StudentDetails(RollNo, Name, Marks, Grade, City) VALUES
	(01, 'Anil', 78, 'C', 'Pune'), 
    (02, 'Bhumika', 93, 'A', 'Mumbai'),
    (03, 'Chetan', 85, 'B', 'Mumbai'),
    (04, 'Dhruva', 96, 'A', 'Delhi'), 
    (05, 'Raghu', 12, 'F', 'Delhi'),
    (06, 'Priya', 82, 'B', 'Delhi');
    
-- Print the table
SELECT * FROM StudentDetails;

-- -------------------------------------------------------------------------------------------------------------------------------------

-- 01 WHERE Clause : WHERE clause used to define some constions

SELECT * FROM StudentDetails WHERE Marks > 80; -- Display Rows only where marks is greater than 80

SELECT * FROM StudentDetails WHERE Marks < 80; -- Display all rows where marks less than 80

SELECT * FROM StudentDetails WHERE Marks >= 12;

SELECT * FROM StudentDetails WHERE Marks <= 12;

SELECT * FROM StudentDetails WHERE City = "Delhi"; -- Display Rows only where city is Delhi

SELECT * FROM StudentDetails WHERE City != "Mumbai"; -- Other than Mumbai

SELECT * FROM StudentDetails WHERE City = "Mumbai" AND Marks > 90; -- Display Rows only when city is Mumbai and marks above 90

SELECT * FROM StudentDetails WHERE City = "Mumbai" OR Marks > 90; -- Display Rows only when city is Mumbai or marks above 90

SELECT * FROM StudentDetails WHERE City IN('Mumbai', 'Pune'); -- Only Mumbai and Pune city student list displau

SELECT * FROM StudentDetails WHERE City NOT IN('Mumbai', 'Delhi');

SELECT * FROM StudentDetails WHERE Marks BETWEEN 75 AND 100;

-- -------------------------------------------------------------------------------------------------------------------------------------

-- 02 LIMIT Clause : Which limits number of row displayes from Top to Bottom

-- Will display first 3 rows only
SELECT * FROM StudentDetails 
WHERE marks > 10
LIMIT 3;

-- -------------------------------------------------------------------------------------------------------------------------------------

-- 03 OFFSET Clause : Which is used to display rows by specifing the row number using OFFSET.
-- If my OFFSET is 3, rows will display from 4 to end 
-- will display last 3 rows

-- OFFSET Alone won't work, we need to combine LIMIT and OFFSET to get proper list
SELECT * FROM StudentDetails
WHERE marks > 10
OFFSET 3;

-- OFFSET with LIMIT : It will display row 4, 5, 6
SELECT * FROM StudentDetails
WHERE marks > 10
LIMIT 3
OFFSET 3;

-- It will display rows 5 and 6
SELECT * FROM StudentDetails
WHERE marks > 10
LIMIT 6 
OFFSET 4;

-- -------------------------------------------------------------------------------------------------------------------------------------

-- 04 ORDER BY Clause : To sort the list Ascending (ASC) and Descending (DESC) order.

-- Display student list in Ascending order based on marks
SELECT * FROM StudentDetails
ORDER BY Marks ASC;

-- Display student list in Descending order based on marks
SELECT * FROM StudentDetails
ORDER BY Marks DESC;

-- Display student list in ascending order alphabetic order
SELECT * FROM StudentDetails
ORDER BY City ASC;

-- -------------------------------------------------------------------------------------------------------------------------------------

-- 05 GROUP BY : It collect data from multiple recors or rows and group the result by one or more columns

SELECT City, COUNT(Name)
FROM StudentDetails
GROUP BY City;

-- Aggregate Functions : COUNT(), MAX(), MIN(), SUM(), AVG()

SELECT Grade, COUNT(Name)
From StudentDetails
GROUP BY Grade;

