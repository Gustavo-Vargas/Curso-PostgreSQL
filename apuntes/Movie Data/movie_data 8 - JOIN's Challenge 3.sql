-- 1.- Select the first and last names of all the acotrs who have starred in movies directed by Wex Anderson
SELECT ac.first_name, ac.last_name FROM actors ac
JOIN movies_actors ma ON ac.actor_id = ma.actor_id
JOIN movies mo ON mo.movie_id = ma.movie_id
JOIN directors d ON d.director_id = mo.director_id
WHERE d.first_name = 'Wes'
AND d.last_name = 'Anderson';


-- 2.- Which director has the highest total domestic takings.
SELECT d.first_name, d.last_name, SUM(mr.domestic_takings) AS total_dom_takings FROM directors d
JOIN movies mo ON d.director_id = mo.director_id
JOIN movie_revenues mr ON mo.movie_id = mr.movie_id
WHERE mr.domestic_takings IS NOT NULL
GROUP BY d.first_name, d.last_name
ORDER BY total_dom_takings DESC
LIMIT 1;
















