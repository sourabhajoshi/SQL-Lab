-- Conditions to create DB and table IF EXISTS/ IF NOT EXISTS

-- Create a DB with condition
CREATE DATABASE IF NOT EXISTS test_db;

-- Delete above DB with condition
-- DROP DATABASE IF EXISTS test_db;

-- Create a table with condition
USE test_db;
CREATE TABLE IF NOT EXISTS test_table(
	id INT PRIMARY KEY, 
    name VARCHAR(25),
    age INT NOT NULL
);

-- Delete a table with consition
DROP TABLE IF EXISTS test_table;