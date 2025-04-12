-- Database: owners_pets

-- DROP DATABASE IF EXISTS owners_pets;

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

-- 1.- Insert the data into the owners table: 
INSERT INTO owners (first_name, last_name, city, state, email) VALUES
('Samuel', 'Smith', 'Boston', 'MA', 'samsmith@gmail.com'),
('Emma', 'Johnson', 'Seattle', 'WA', 'emjohnson@gmail.com'),
('John', 'Oliver', 'New York', 'NY', 'johnoliver@gmail.com'),
('Olivia', 'Brown', 'San Francisco', 'CA', 'oliviabrown@gmail.com'),
('Simon', 'Smith', 'Dallas', 'TX', 'sismith@gmail.com'),
(NULL, 'Maxwell', NULL, 'CA', 'lordmaxwell@gmail.com');

SELECT * FROM owners;

-- 2.- Insert the data itno the pets table: 
INSERT INTO pets (pet_id, species, full_name, age, owner_id) VALUES
(1, 'Dog', 'Rex', 6, 1),
(2, 'Rabbit', 'Fluffy', 2, 5),
(3, 'Cat', 'Tom', 8, 2),
(4, 'Mouse', 'Jerry', 2, 2),
(5, 'Dog', 'Biggles', 4, 1),
(6, 'Tortoise', 'Squirtle', 42, 3);

SELECT * FROM pets;

-- 3.- Update Fluffy the rabbits age to 3
UPDATE pets
SET age = 3
WHERE full_name = 'Fluffy';

SELECT * FROM pets;

-- 4.- Delete MR Masswell from the owners table
DELETE FROM owners
WHERE last_name = 'Maxwell';

SELECT * FROM owners;

	