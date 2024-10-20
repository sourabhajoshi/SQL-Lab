-- Table related Queries 

-- 01 Basic Queries : CREATE, DRO, INSERT INTO, PRINT Table, PRINT Specific Columns

-- Create table related query database
CREATE DATABASE table_queries;
 
-- use above DB
USE table_queries;

-- create a table for student in college
CREATE TABLE Student_Lists(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

-- Add values into above table
INSERT INTO Student_Lists VALUES
	(1, "Bob", 25), 
    (2, "Marle", 26), 
    (3, "Pitar", 28);
    
-- Another way of adding values into table
INSERT INTO Student_Lists(id, name, age) VALUES
	(4, "Charli", 29),
    (5, "John", 30);
    
-- Add only one data
INSERT INTO Student_Lists VALUES(6, "Pover", 32);
    
-- Print above table : Display all the columns
SELECT * FROM Student_Lists;

-- Print only id colums : Display only id column
SELECT id FROM Student_Lists;

-- Print id and age columns
SELECT id, age FROM Student_Lists;

-- Display all the tables
-- SHOW TABLES;

-- Delete the above table
-- DROP TABLE Student_Lists;

-- Delete above database
-- DROP DATABASE table_queries;

