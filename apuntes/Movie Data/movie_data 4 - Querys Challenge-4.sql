-- 1.- REturn the top 3 movies with the highest international takings
SELECT * from movie_revenues
WHERE international_takings IS NOT NULL
ORDER BY international_takings DESC
LIMIT 3;

-- 2.- COncatenate the first and last names of the directors, separated by a space, and call this new column full_name
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM directors;

-- 3.- Return the acotrs with missing first_names or missing date_of_births
SELECT * FROM actors
WHERE first_name IS NULL
OR date_of_birth IS NULL;





