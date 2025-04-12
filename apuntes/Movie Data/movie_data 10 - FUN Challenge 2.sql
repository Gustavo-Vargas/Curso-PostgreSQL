-- 1.- Use the substring function to retrieve the first 6 characters of each movie 
-- name and the year they released.

SELECT SUBSTRING(movie_name, 1, 6) AS movie_name, SUBSTRING(release_date::TEXT, 1, 4) AS year
FROM movies;

-- 2.- Retrieve the first name initial and last name of every actor born in May.

SELECT SUBSTRING(first_name, 1, 1) AS fn_initial, last_name, date_of_birth FROM actors
WHERE SPLIT_PART(date_of_birth::TEXT, '-', 2) = '05';

-- 3.- Replace the movie language for all English language movies, with age certificate rating 18, to ‘Eng’. 

UPDATE movies 
SET movie_lang = REPLACE(movie_lang, 'English', 'Eng')
WHERE age_certificate = '18';

SELECT * FROM movies;

