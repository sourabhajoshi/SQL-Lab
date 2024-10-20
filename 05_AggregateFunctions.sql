-- Aggregate Functions : Aggregate functions perform a calculation on set of values aqnd return a single value
-- Aggregate functions are : COUNT(), MIN(), MAX(), AVG(), SUM()

-- 01 COUNT() : Return number of rows count that matches specified criteria

CREATE DATABASE IF NOT EXISTS AggregateFunctions;

USE AggregateFunctions;

CREATE TABLE IF NOT EXISTS StationaryList(
	Item_Id INT PRIMARY KEY, 
    Name VARCHAR(50),
    Quentity INT NOT NULL
);

-- DROP TABLE StationaryList;

INSERT INTO StationaryList (Item_Id, Name, Quentity) 
VALUES 
(1, 'Rubber', 5),
(2, 'Sharpner', 2),
(3, 'Pencil', 8),
(4, 'Ball pen', 2),
(5, 'Blue ink pen', 10),
(6, 'Red ink pen', 6),
(7, 'Black ink pen', 3),
(8, 'Black ink pen', 6), 
(9, 'Green ink pen', 3),
(10, 'Note book', 20);

SELECT * FROM StationaryList;

-- -------------------------------------------------------------------------------------------------------------------------

-- 01 COUNT() : Number of rows that matches the specified criterian
SELECT COUNT(Item_Id) FROM StationaryList; -- 10

SELECT COUNT(Quentity > 5) FROM StationaryList; -- 10 : Can not add condition without WHERE

SELECT COUNT(Quentity)
FROM StationaryList
WHERE Quentity > 5; -- 05

-- -------------------------------------------------------------------------------------------------------------------------

-- 02 MIN() : Return minimum value from the set of values

SELECT MIN(Quentity) FROM StationaryList; -- 02

-- -------------------------------------------------------------------------------------------------------------------------

-- 03 MAX() : Return maximum value from the set of values

SELECT MAX(Quentity) FROM StationaryList; -- 20

-- -------------------------------------------------------------------------------------------------------------------------

-- 04 SUM : Total sum of numeric column

SELECT SUM(Quentity) FROM StationaryList; -- 65

SELECT SUM(Item_Id) FROM StationaryList; -- 55

SELECT SUM(Name) FROM StationaryList; -- 0 : It will applicable only to numeric column

-- -------------------------------------------------------------------------------------------------------------------------

-- 05 AVG() : Average value of numeric column

SELECT AVG(Quentity) FROM StationaryList; -- 6.500
