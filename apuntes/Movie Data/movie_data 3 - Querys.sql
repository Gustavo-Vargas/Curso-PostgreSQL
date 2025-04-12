
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


-- USING like WITH % AND _

/*
SELECT columnname FROM table
WHERE columnanme LIKE '%PATTERN%';

SELECT columnname FROM table
WHERE columnanme LIKE '_PATTERN_';
*/



