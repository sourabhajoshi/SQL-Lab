-- Table Contraints

-- Create a DB
CREATE DATABASE table_related_constraints;

-- use above create DB
USE table_related_constraints;

-- create a employee table

-- 01 DEFAULT
CREATE TABLE employee(
	Emp_Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Role VARCHAR(50),
    Salary INT DEFAULT 15000
);

-- 0A Add values into table : ERROR -> Above Salary is default value 15000, we can not override with INSERT statement
 -- INSERT INTO employee VALUES
 --	  (101, "Hari", "SE-1"),
 --   (102, "Priya", "SE-2", 20000),
 --   (103, "Raghu", "SE-2", 25000);
    
-- 0B Add values into table : Specify the columns you want to insert
INSERT INTO employee (Emp_Id, Name, Role) VALUES
	(101, 'Hari', 'SE-1'),
	(102, 'Priya', 'SE-2'),
    (103, 'Raghu', 'SE-3');

-- Print the table
SELECT * FROM employee;

-- Drop the above table
DROP TABLE employee;

-- ----------------------------------------------------------------------------------------------------------------------------------

-- 02 NOT NULL : Column can not have null value

CREATE TABLE student(
	Id INT,
    Name VARCHAR(20),
    Age INT NOT NULL
);

-- ERROR : Age can not be null
INSERT INTO student(Id, name, Age) VALUES 
	(1, "Sou", null), -- ERRO : Age cannoyt be null
    (2, "Sac", 25),
    (3, "Sudh", 27);
    
INSERT INTO student(Id, name, Age) VALUES 
	(1, "Sou", 23),
    (2, "Sac", 25),
    (3, "Sudh", 27);

SELECT * FROM student;

-- DROP TABLE student;

-- ----------------------------------------------------------------------------------------------------------------------------------

-- 03 PRIMARY KEY : Unique identifier in the table

CREATE TABLE Books(
	Book_Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Author VARCHAR(50)
);

-- ERROR : Duplicate entry 1001. : For two books using same Book_Id
INSERT INTO Books(Book_Id, Name, Author) VALUES
	(1001, "Ramayana", "Valmiki"),
    (1001, "MahaBharata", "Vyasa");
    
INSERT INTO Books(Book_Id, Name, Author) VALUES
	(1001, "Ramayana", "Valmiki"),
    (1002, "MahaBharata", "Vyasa");
    
SELECT * FROM Books;

-- ----------------------------------------------------------------------------------------------------------------------------------

-- 04 UNIQUE : Define each columns should have UNIQUE value

CREATE TABLE Movies(
	Movie_Id INT UNIQUE, 
    Name VARCHAR(50), 
    Year INT
);

-- ERROR : Duplicate entry of 201. UNIQUE not allow us to enter duplicate key in that column
INSERT INTO Movies(Movie_Id, Name, Year) VALUES
	(201, "Mungaru Male", 2006),
    (201, "Duniya", 2009),
    (203, "Pushpaka", 1994);
    
INSERT INTO Movies(Movie_Id, Name, Year) VALUES
	(201, "Mungaru Male", 2006),
    (202, "Duniya", 2009),
    (203, "Pushpaka", 1994);
    
SELECT * FROM Movies;

-- ----------------------------------------------------------------------------------------------------------------------------------

-- 04 CHECK : Check the condition for adding new record into table

CREATE TABLE Voter_List(
	Voter_Id INT,
    Name VARCHAR(50),
    Age INT CHECK(age >= 18)
);

-- ERROR : Age below 18 not allowed, will through error of violated
INSERT INTO Voter_List VALUES(301, "Kashyapa", 9);

INSERT INTO Voter_List VALUES(301, "Kashyapa", 19);

SELECT * FROM Voter_List;

-- DROP TABLE Voter_List;

    




