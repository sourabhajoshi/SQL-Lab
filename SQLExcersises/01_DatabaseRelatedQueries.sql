/* Create a database : Write the SQL to create a database named EmployeeDB */
CREATE DATABASE EmployeeDB;

/* Show all databases : SQL to list all databases in the server */
SHOW DATABASES;

/*  Use a specific database : SQL to switch to EmployeeDB */
USE EmployeeDB;

/* Rename a database : Rename EmployeeDB to CompanyDB, Note: Some SQL engines like MySQL don’t support direct rename; simulate or skip if needed. */
/* ALTER DATABASE EmployeeDB MODIFY Name = 'CompanyDB'; */ /* Rename not supporting by MySQL*/

/* Drop (delete) a database : Delete the database CompanyDB */
DROP DATABASE EmployeeDB;