-- 1.- Select the directors first and last names and movie names in upper case 
SELECT UPPER(d.first_name), UPPER(d.last_name), UPPER(m.movie_name) FROM directors d
JOIN movies m ON d.director_id = m.director_id;

-- 2.- Select the first and last names, in initial capitalisation format, 
-- of all the actors who hace starred in a Chinese or Korean movie
SELECT DISTINCT INITCAP(A.first_name), INITCAP(a.last_name) FROM actors a
JOIN movies_actors ma ON a.actor_id = ma.actor_id
JOIN movies m ON m.movie_id = ma.movie_id
WHERE m.movie_lang IN ('Chinese', 'Korean');

-- 3.- REtrieve the reversed first and alst names of each directors and
-- the first theree characters of their nationality
SELECT REVERSE(first_name), REVERSE(last_name), LEFT(nationality, 3) FROM directors;

-- 4.- Retrieve the initials of each director and display it in one column named 'initials'.
SELECT CONCAT_WS('.', LEFT(first_name, 1), LEFT(last_name,1)) AS initials, first_name, last_name FROM directors;

