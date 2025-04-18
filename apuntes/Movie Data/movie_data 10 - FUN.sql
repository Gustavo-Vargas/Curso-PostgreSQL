-- UPPER AND LOWER FUNCTIONS
/*
SELECT UPPER('string');

SELECT LOWER('string');

SELECT UPPER(column_name) FROM table_name;

SELECT LOWER(column_name) FROM table_name;
*/
SELECT UPPER('stop shouting');

SELECT first_name, UPPER(last_name) FROM actors;

SELECT first_name, UPPER(last_name) AS last_name FROM actors;

SELECT * FROM actors;

SELECT LOWER('StOP ShoutiNG');

SELECT LOWER(movie_name) FROM movies;

SELECT movie_name FROM movies;
*/


-- INITCAP STRING FUNCTION

/*
SELECT INITCAP('example string');

SELECT INITCAP(column_name) FROM table_name;
*/
SELECT INITCAP('eXamplE sTRING');

SELECT movie_name FROM movies;

SELECT INITCAP(movie_name) FROM movies;


-- LEFT AND RIGHT STRING FUNCTIONS
/*
SELECT LEFT('string', int);

SELECT LEFT(column_name, INT) FROM table_name;

SELECT RIGHT('string', int);

SELECT RIGHT(column_name, INT) FROM table_name;
*/

SELECT LEFT('string', 3);

SELECT LEFT(movie_name, 5) FROM movies;	

SELECT RIGHT('example', 3);

SELECT LEFT(first_name, 2) FROM actors;	



-- REVERSE FUNCTION
/*
SELECT REVERSE('string');

SELECT REVERSE(column_name) FROM table_name;
*/
SELECT REVERSE('reverse');

SELECT movie_name, REVERSE(movie_name) FROM movies;


-- SUBSTRING FUNCTION
/*
SELECT SUBSTRING('string', from, count);

SELECT SUBSTRING(column_name, from, count) FROM table_name;
*/
SELECT SUBSTRING('long string', 5, 3);

SELECT first_name, SUBSTRING(first_name, 3, 4) FROM actors;



-- REPLACE FUNCTION
/*
SELECT REPLACE('source_string', 'old_string', 'new_string');

SELECT REPLACE('source_string', 'old_string', 'new_string') from table_name;

UPDATE table_name
SET column_name = REPLACE('source_string', 'old_string', 'new_string')
WHERE column_name = 'value';
*/
SELECT REPLACE('a cat plays with another cat', 'cat', 'dog');

SELECT * FROM actors;g

SELECT first_name, last_name, REPLACE(gender, 'M', 'Male') FROM actors;

SELECT * FROM directors;

UPDATE directors
SET nationality = REPLACE(nationality, 'Brit', 'Eng')
WHERE nationality = 'British';


--SPLIT_PART FUNCTION
/*
SELECT SPLIT_PART('string', 'delimiter', field_number);

SELECT SPLIT_PART(column_name, 'delimiter', field_number) FROM table_name;
*/
SELECT SPLIT_PART('first_name.last_name@gmail.com', '@', 1);
SELECT SPLIT_PART('first_name.last_name@gmail.com', '@', 3);

SELECT movie_name, SPLIT_PART(movie_name, ' ', 1) AS first_word,
SPLIT_PART(movie_name, ' ', 2) AS second_word
FROM movies;


--Using Casting to apply SRTING Functions to Non String Data Types
/*
SELECT column_name::DATATYPE FROM table_name;
*/
SELECT * FROM directors;

SELECT date_of_birth::TEXT FROM directors;

SELECT SPLIT_PART(date_of_birth::TEXT, '-', 3) FROM directors;
SELECT SPLIT_PART(date_of_birth::VARCHAR(20), '-', 3) FROM directors;



