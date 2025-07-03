/*
01. Create a Table

Create a table named Employees with columns:
emp_id (INT, Primary Key)
name (VARCHAR)
age (INT)
department (VARCHAR)
salary (DECIMAL)
*/

CREATE DATABASE EmployeeDB;

USE EmployeeDB;

CREATE TABLE Employees(
	emp_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(25),
    age INT NOT NULL,
    department VARCHAR(20),
    salary DECIMAL NOT NULL
);

/* 2. View All Tables in the Current Database */
SHOW TABLES; #Employees

/* 3. View Table Structure (Schema)*/ 
SELECT *
FROM Employees;

-- OR

SHOW COLUMNS FROM Employees;

-- OR

DESCRIBE Employees;

/* 4. Add a New Column to an Existing Table
   Add a column email (VARCHAR) to Employees
*/

ALTER TABLE Employees 
ADD email VARCHAR(50);

SHOW COLUMNS FROM Employees;

/* 5. Rename a Column
   Rename the column name to full_name in Employees
*/

ALTER TABLE Employees
CHANGE COLUMN name full_name VARCHAR(25);

SHOW COLUMNS FROM Employees;

/* 6. Modify Data Type of a Column
   Change salary column type from DECIMAL to FLOAT
*/

ALTER TABLE Employees
MODIFY COLUMN salary FLOAT;

SHOW COLUMNS FROM Employees;

/* 7. Drop a Column
   Remove the column department from Employees
*/

ALTER TABLE Employees
DROP COLUMN department;

SHOW COLUMNS FROM Employees;

/* 8. Rename a Table
   Rename the table Employees to Staff
*/

RENAME TABLE Employees TO Staff;
SHOW TABLES; -- Staff


/* 9. Copy Structure of a Table Without Data
   Create a new table EmployeesBackup with the same structure as Employees, but without copying data
*/

/* 10. Copy Structure + Data from One Table to Another
   Create a new table EmployeesCopy with all data from Employees
*/

/* 11. Drop (Delete) a Table
   Drop the EmployeesCopy table
*/

/* 12. Truncate a Table (Delete All Data, Keep Structure)
   Truncate the Employees table
*/

/* 13. Check Constraints
   Show constraints (PRIMARY KEY, UNIQUE, etc.) on Employees
*/


