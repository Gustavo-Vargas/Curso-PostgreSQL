
/*
 Simple Querys
*/
SELECT * FROM directors;

Select first_name FROM directors;

Select first_name, last_name FROM directors;

Select first_name, last_name, nationality FROM directors;

-- Retrieving data with a where clause

/*
SELECT columnname FROM tablename
WHERE columnname = 'value';
*/

SELECT * FROM movies
WHERE age_certificate = '15';

SELECT * FROM movies
WHERE age_certificate = '15'
AND movie_lang = 'Chinese';

SELECT * FROM movies
WHERE age_certificate = '15'
OR movie_lang = 'Chinese';

SELECT * FROM movies
WHERE movie_lang = 'English'
AND age_certificate = '15'
AND director_id = 27;

-- Using logical operators (>, >=, <, <=)

SELECT movie_name, movie_length FROM movies
WHERE movie_length > 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length >= 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length < 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length <= 120;

SELECT * FROM movies
where release_date < '1999-12-31';

SELECT * FROM movies
where release_date > '1999-12-31';

SELECT * FROM movies
WHERE movie_lang > 'English';

SELECT * FROM movies
WHERE movie_lang < 'English';


-- Using IN and NOT In
/*
SELECT columnname1, columname2 FROM tablename
WHERE columnanme3 IN ('value1', 'value2');

SELECT columnname1, columname2 FROM tablename
WHERE columnanme3 NOT IN ('value1', 'value2');
*/

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John');

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John', 'Peter');

SELECT first_name, last_name FROM actors
WHERE first_name NOT IN ('Bruce', 'John', 'Peter');

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id IN (2,3,4,5,6,8);

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id NOT IN (2,3,4,5,6,8);



-- USING like WITH % AND _

/*
SELECT columnname FROM table
WHERE columnanme LIKE '%PATTERN%';

SELECT columnname FROM table
WHERE columnanme LIKE '_PATTERN_';
*/

SELECT * FROM actors
WHERE first_name LIKE 'P%';

SELECT * FROM actors
WHERE first_name LIKE 'Pe_';

SELECT * FROM actors
WHERE first_name LIKE '%rl%';

SELECT * FROM actors
WHERE first_name LIKE '__rl__';


-- SELECTING DATA WHERE A COLUMN IS BETWEEN 2 VALUES

/*
SELECT columnname1, columnname2  FROM TABLENAME
WHERE columnanme3 BETWEEN valuew1 AND valuew2;
*/

SELECT * FROM movies;

SELECT movie_name, release_date  FROM movies
WHERE release_date BETWEEN '1995-01-01' AND '1999-12-31';

SELECT movie_name, movie_length FROM movies
WHERE movie_length BETWEEN 90 AND 120;

SELECT movie_name, movie_lang FROM movies
WHERE movie_lang BETWEEN 'Eo' AND 'Portuguese';

-- ORDERING THE RESULTS RETURNED

/*
SELECT columnname1, columnname2 FROM TABLENAME
ORDER BY columnname3;
*/
SELECT * FROM actors;

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name;

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name DESC;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
ORDER BY actor_id DESC;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC;



-- LIMITING THE NUMBER OF RECORDS RETURNED
/*
SELECT columnname1, columnname2 FROM TABLENAME
LIMIT N;
*/

SELECT * FROM movie_revenues
ORDER BY domestic_takings
LIMIT 5;

SELECT * FROM movie_revenues
ORDER BY revenue_id
LIMIT 5 OFFSET 5;


-- USING FETCH
/*
SELECT column1FROM table1
FETCH FIRST 1 ROW ONLY;
*/

SELECT movie_id, movie_name FROM movies
FETCH FIRST 1 ROW ONLY;

SELECT movie_id, movie_name FROM movies
FETCH FIRST 10 ROW ONLY;

SELECT movie_id, movie_name FROM movies
OFFSET 8 ROWS
FETCH FIRST 10 ROW ONLY;

-- DISTINCT values
/*
SELECT DISTINCT columname FROM tablename;
*/

SELECT DISTINCT movie_lang, age_certificate FROM movies
ORDER BY movie_lang;

SELECT DISTINCT * FROM movies
ORDER BY movie_lang;

SELECT * FROM movies;


-- Dealing with NULL values
/*
SELECT * FROM tablename
WHERE columname IS NULL;

SELECT * FROM tablename
WHERE columname IS NOT NULL;
*/

SELECT * FROM actors
WHERE date_of_birth IS NULL;

SELECT * FROM actors
WHERE date_of_birth IS NOT NULL;

SELECT * FROM movie_revenues
WHERE domestic_takings IS NOT NULL
ORDER BY domestic_takings DESC;

SELECT * FROM moview_revenues
WHERE international_takings IS NULL;

-- Setting a column name alias
/*
SELECT columnname AS new_columname FROM tablename;
*/
SELECT last_name AS surname FROM directors;

SELECT last_name AS surname FROM directors
Where last_name LIKE 'A%'
ORDER BY surname;

SELECT * FROM directors;


-- Using concatenate
/*
SELECT 'string1' || 'string2' AS new_string;

SELECT CONCAT(column1, column2) AS new_column FROM tablename;

SELECT CONCAT_WS(' ', column1, column2) AS new_column FROM tablename;
*/

SELECT 'concat' || 'together' AS new_string;
SELECT 'concat' || ' ' || 'together' AS new_string;

SELECT CONCAT(first_name, last_name) AS full_name FROM actors;

SELECT CONCAT(first_name, ':', last_name) AS full_name FROM actors;

SELECT CONCAT_WS(' ', first_name, last_name, date_of_birth) AS full_name FROM actors;







