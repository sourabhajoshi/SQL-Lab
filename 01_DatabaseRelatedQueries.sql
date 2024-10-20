/* create a databae */
CREATE DATABASE practicefile;

USE practicefile;

/*Create a table*/
CREATE TABLE students_data(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

/* Add a data into table*/
INSERT INTO students_data VALUES(1, "BOB", 25);
INSERT INTO students_data VALUES(2, "CHARLI", 26);

/*Print table data*/
SELECT * FROM students_data;

/*Print existing databases*/
SHOW DATABASES;

/*Print existing tables*/
SHOW TABLES;

