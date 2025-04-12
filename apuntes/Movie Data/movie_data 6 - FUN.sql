-- Aggregate FUncions : COUNT
/*
SELECT COUNT(columname) FROM tablename;
*/
SELECT COUNT(*) FROM movie_revenues;

SELECT COUNT(international_takings) FROM movie_revenues;

SELECT COUNT(*) FROM movies
WHERE movie_lang = 'English';


-- Aggregate Funcions : SUM
/*
SELECT SUM(columname) FROM tablename;
*/
SELECT SUM(domestic_takings) FROM movie_revenues;

SELECT SUM(domestic_takings) FROM movie_revenues
WHERE domestic_takings > 100.0;

SELECT SUM(movie_length) FROM movies
WHERE movie_lang = 'Chinese';

SELECT SUM(*) FROM movies;

-- Aggregate Funcions : MIN and MAX
/*
SELECT MAX(columname) FROM tablename;
SELECT MIN(columname) FROM tablename;
*/

SELECT MAX(movie_length) FROM movies;
SELECT MIN(movie_length) FROM movies;

SELECT MIN(movie_length) FROM movies
WHERE movie_lang = 'Japanese';

SELECT MAX(release_date) FROM movies;
SELECT MIN(release_date) FROM movies;

SELECT MAX(movie_name) FROM movies;
SELECT MIN(movie_name) FROM movies;


-- Aggregate Funcions : AVG
/*
SELECT AVG(columname) FROM tablename;
*/
SELECT AVG(movie_length) FROM movies;

SELECT AVG(movie_length) FROM movies
WHERE age_certificate = '18';

-- Grouping data
/*
SELECT column1, AGGFUN(column2) FROM tablename
GROUP BY column1;
*/
SELECT COUNT(movie_lang) FROM movies;

SELECT movie_lang, COUNT(movie_lang) FROM movies
GROUP BY movie_lang;

SELECT movie_lang, AVG(movie_length) FROM movies
GROUP BY movie_lang;

SELECT movie_lang, age_certificate, AVG(movie_length) FROM movies
GROUP BY movie_lang, age_certificate;

SELECT movie_lang, age_certificate, AVG(movie_length) FROM movies
WHERE movie_length > 120
GROUP BY movie_lang, age_certificate;

SELECT movie_lang, age_certificate, AVG(movie_length) FROM movies
GROUP BY movie_lang, age_certificate
WHERE movie_length > 120;

SELECT movie_lang, MIN(movie_length), MAX(movie_length) FROM movies
WHERE age_certificate = '15'
GROUP BY movie_lang;

-- HAVING Clauses
/*
SELECT column1, AGGFUN(column2) FROM tablename
GROUP BY column1
HAVING AGGFUN(column3) = value;
*/
SELECT movie_lang, COUNT(movie_lang) FROM movies
GROUP BY movie_lang
HAVING COUNT(movie_lang) > 1;

SELECT movie_lang, COUNT(movie_lang) FROM movies
WHERE movie_length > 120
GROUP BY movie_lang
HAVING COUNT(movie_lang) > 1;


