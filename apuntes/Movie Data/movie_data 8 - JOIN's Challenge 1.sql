-- 1.- SElect the directors first and last names, the movie names and release dates for all Chinese, Korean and Japanese movies.
SELECT d.first_name, d.last_name, mo.movie_name, mo.release_date FROM directors d 
JOIN movies mo ON d.director_id = mo.director_id
WHERE mo.movie_lang IN ('Chinese', 'Korean', 'Japanese');

-- 2.- SElect the movie names, release dates and international takings of all ENglish language movies.
SELECT mo.movie_name, mo.release_date, mr.international_takings FROM movies mo
JOIN movie_revenues mr ON mo.movie_id = mr.movie_id
WHERE mo.movie_lang = 'English';

-- 3.- Select the movie names, domestic takings and itnernational takings for all movies with either 
-- missing domestic takings or misisng international takings and order the reults by movies
SELECT mo.movie_name, mr.domestic_takings, mr.international_takings FROM movies mo
JOIN movie_revenues mr ON mo.movie_id = mr.movie_id
WHERE mr.domestic_takings IS NULL
OR mr.international_takings IS NULL
ORDER BY mo.movie_name;



