-- 1.- Select the American directors ordered from oldest to youngest.
SELECT * FROM directors
WHERE nationality = 'American'
ORDER BY date_of_birth;

-- 2.- Return the distinct nationalities from the directors table
SELECT DISTINCT nationality FROM directors;

-- 3.- Return the first names, last anmes and date of births of the 10 youngest females acotrs.
SELECT first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC
LIMIT 10;






