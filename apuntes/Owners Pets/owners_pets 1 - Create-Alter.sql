-- Database: owners_pets

-- DROP DATABASE IF EXISTS owners_pets;

-- 1.- Create a new database called owners_pets
CREATE DATABASE owners_pets
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en-US'
    LC_CTYPE = 'en-US'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


-- 2.- Create the owners table
CREATE TABLE owners (
	owner_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	city VARCHAR(30),
	state CHAR(2)
);

SELECT * FROM owners;

-- 3. Create the pets table (with a foreign key)
CREATE TABLE pets (
	pet_id SERIAL PRIMARY KEY, 
	species VARCHAR(30),
	full_name VARCHAR(30),
	age INT, 
	owner_id INT REFERENCES owners(id)
);

SELECT * FROM pets;

-- 4. Add an email column to the owners table
ALTER TABLE owners
ADD COLUMN email VARCHAR(50) UNIQUE;

SELECT * FROM owners;

-- 5. Change the data type of the last_name column in the owners table to VARCHAR(50).
ALTER TABLE owners
ALTER COLUMN last_name TYPE VARCHAR(50);

SELECT * FROM owners;
