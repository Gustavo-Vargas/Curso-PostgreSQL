-- Database: test

-- DROP DATABASE IF EXISTS test;

CREATE DATABASE test
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en-US'
    LC_CTYPE = 'en-US'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Modifyying tables and add a column

CREATE TABLE examples (
	example_id SERIAL PRIMARY KEY,
	first_name VARCHAR(3),
	last_name VARCHAR(30)
);

SELECT * FROM examples;

ALTER TABLE examples
ADD COLUMN email VARCHAR(50) UNIQUE;


ALTER TABLE example 
ADD COLUMN nationality VARCHAR(30),
ADD COLUMN age INT NOT NULL;

-- Modify a columns data type 
/*
ALTER TABLE tablename
ALTER COLUMN columname TYPE new_data_type;
*/

ALTER TABLE examples
ALTER COLUMN nationality TYPE CHAR(3);

SELECT * FROM examples;

ALTER TABLE examples
ALTER COLUMN last_name TYPE VARCHAR(50),
ALTER COLUMN EMAIL TYPE VARCHAR(80);


-- Deleting tavles from a database
CREATE TABLE practice (
	id SERIAL PRIMARY KEY,
	product_name VARCHAR(50),
	product_name VARCHAR(4,2)
);

SELECT * FROM practice;

DROP TABLE practice;


-- Insert data into a table

/*
INSERT INTO tablename (columnname1, columnname2, columnname3)
VALUES ('value1', 'value2', 'value3');
*/

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('David', 'Mitchell', 'dmitch@gmail.com', 'GBR', 43);

SELECT * FROM examples;

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('Emily', 'Warson', 'ewatson@gmail.com', 'USA', 29),
		('Theo', 'Scott', 'tscott@gmail.com', 'AUS', 33),
		('Emily', 'Smith', 'esmith@gmail.com', 'GBR', 29),
		('Jim', 'Burr', 'jburr@gmail.com', 'USA', 54);

-- Update data in a table

/*
UPDATE table
SET columnname = "newvalue"
WHERE columnname = "value"
*/

UPDATE examples
SET email = 'davidmitchell@gmail.com'
WHERE example_id =1;

SELECT * FROM examples;

UPDATE examples
SET nationality = 'CAN'
WHERE nationality ='USA';

UPDATE examples
SET first_name = 'James', age = 55
WHERE example_id = 5;



-- Deleting data from a table 
/*
DELETE FROM tablename
WHERE columnname = 'value';
*/

DELETE FROM examples 
WHERE example_id = 2;

SELECT * FROM examples;

DELETE FROM examples 
WHERE nationality = 'GBR';

SELECT * FROM examples;










