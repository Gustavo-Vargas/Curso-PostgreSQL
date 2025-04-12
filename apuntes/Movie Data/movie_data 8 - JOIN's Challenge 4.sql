-- 1.- Select the first names, last names and dates of birth from directors and actors.
-- Order the results by the date of birth.
SELECT first_name, last_name, date_of_birth FROM directors 
UNION ALL
SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name;

-- 2.- Select the first and alst names of all directors and actors born in the 1960s.
-- ORder the results by last name
SELECT first_name, last_name FROM directors 
WHERE date_of_birth BETWEEN '1960-01-01' AND '1969-12-31'
UNION ALL 
SELECT first_name, last_name FROM actors
WHERE date_of_birth BETWEEN '1960-01-01' AND '1969-12-31'
ORDER BY last_name;
















