-- 1.- Intersect the first name, last name and date of birth columns in the directors and actors tables.
SELECT first_name, last_name, date_of_birth FROM directors
INTERSECT
SELECT first_name, last_name, date_of_birth FROM actors;




-- 2.- Retrieve the first names of male acotrs unless they have the same first name as any British directors.
SELECT first_name FROM actors
WHERE gender = 'M'
EXCEPT
SELECT first_name FROM directors
WHERE nationality = 'British';


