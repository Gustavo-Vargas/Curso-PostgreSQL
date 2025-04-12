-- 1.- Select a left join to select the first and alst names of all British directors and the 
-- names and age certificates of the movies that they directed
SELECT d.first_name, d.last_name, d.nationality, mo.movie_name, mo.age_certificate from directors d
LEFT JOIN movies mo ON d.director_id = mo.director_id
WHERE d.nationality = 'British';

-- 2.- Count the number of movies that each director has directed
SELECT d.first_name, d.last_name, COUNT(mo.movie_id) FROM directors d
JOIN movies mo ON d.director_id = mo.director_id
GROUP BY d.first_name, d.last_name;
