-- INNER JOINS: Part 1
/*
SELECT table1.column1, table1.column2, table2.column1 FROM talbe1
INNER JOIN table2 ON table1.column3 = table2.column3;
*/

select * from directors;
SELECT * FROM movies;

INSERT INTO directors (first_name, last_name, date_of_birth, nationality)
VALUES ('Christopher', 'Nolan', '1970-07-30', 'Britush');

SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name 
FROM directors 
INNER JOIN movies ON directors.director_id = movies.director_id;

SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name 
FROM movies
INNER JOIN directors ON directors.director_id = movies.director_id
WHERE movies.movie_lang = 'Japanese'
ORDER BY movies.movie_length;



-- INNER JOINS: Part 2
/*
SELECT table1.column1, table1.column2, table2.column1 FROM talbe1
INNER JOIN table2 ON table1.column3 = table2.column3;

SELECT t1.column1, t1.column2, t2.column1 FROM talbe1 t1
JOIN table t2 ON t1.column3 = t2.column3;
*/
SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name 
FROM directors
INNER JOIN movies ON directors.director_id = movies.director_id
WHERE movies.movie_lang = 'Japanese'
ORDER BY movies.movie_length;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name 
FROM directors d
JOIN movies mo ON d.director_id = mo.director_id
WHERE mo.movie_lang = 'Japanese'
ORDER BY mo.movie_length;

SELECT mo.movie_name, mr.domestic_takings, mr.international_takings FROM movies mo
JOIN movie_revenues mr ON mo.movie_id = mr.movie_id
ORDER BY mr.domestic_takings;


-- INNER JOINS: Part 3
-- Only when the joing columns have the same name!
/*
SELECT t1.column1, t1.column2, t2.column1 FROM talbe1 t1
JOIN table2 t2 USING(column3);
*/
SELECT mo.movie_name, mr.domestic_takings FROM movies mo
JOIN movie_revenues mr USING (movie_id)
WHERE mo.age_certificate IN ('12', '15', '18')
ORDER BY mr.domestic_takings DESC;


-- LEFT JOINS
/*
SELECT t1.column1, t1.column2, t2.column1 FROM talbe1 t1
LEFT JOIN table2 t2 ON t1.column3 = t2.column3;
*/
SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
LEFT JOIN movies mo ON d.director_id = mo.director_id;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM movies mo
LEFT JOIN directors d ON d.director_id = mo.director_id;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
LEFT JOIN movies mo ON d.director_id = mo.director_id
WHERE d.nationality = 'British';


-- RIGHT JOINS
/*
SELECT t1.column1, t1.column2, t2.column1 FROM talbe1 t1
RIGHT JOIN table2 t2 ON t1.column3 = t2.column3;
*/
SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM movies mo
RIGHT JOIN directors d ON d.director_id = mo.director_id;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM movies mo
RIGHT JOIN directors d ON d.director_id = mo.director_id
WHERE mo.age_certificate = '18';


-- FULL OUTER JOINS
/*
SELECT t1.column1, t1.column2, t2.column1 FROM talbe1 t1
FULL JOIN table2 t2 ON t1.column3 = t2.column3;
*/
SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
FULL JOIN movies mo ON d.director_id = mo.director_id;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
FULL JOIN movies mo ON d.director_id = mo.director_id
WHERE mo.movie_lang IN('German', 'Korean')
ORDER BY d.last_name;



-- Joining MOre Than Two Tables
/*
SELECT t1.column, t2.column, t3.column FROM talbe1 t1
JOIN table2 t2 ON t1.column = t2.column
JOIN table2 t3 ON t3.column = t2.column;
*/
SELECT d.first_name, d.last_name, mo.movie_name, mr.international_takings, mr.domestic_takings
FROM directors d
JOIN movies mo ON d.director_id = mo.director_id
JOIN movie_revenues mr ON mr.movie_id = mo.movie_id;

SELECT ac.first_name, ac.last_name, mo.movie_name FROM actors ac
JOIN movies_actors ma ON ac.actor_id = ma.actor_id
JOIN movies mo ON mo.movie_id = ma.movie_id
WHERE mo.movie_lang = 'English'
ORDER BY mo.movie_name;

SELECT d.first_name, d.last_name, mo.movie_name, ac.first_name, ac.last_name, 
mr.domestic_takings, mr.international_takings FROM directors d
JOIN movies mo ON d.director_id = mo.director_id
JOIN movies_actors ma ON ma.movie_id = mo.movie_id
JOIN actors ac ON ac.actor_id = ma.actor_id
JOIN movie_revenues mr ON mr.movie_id = mo.movie_id;


-- UNION
/*
SELECT tcolumn1, column2 FROM table1
UNION
SELECT column1, column2 FROM table2;
*/
SELECT first_name, last_name FROM directors
UNION
SELECT first_name, last_name FROM actors;

SELECT first_name, last_name, date_of_birth FROM directors
WHERE nationality = 'American'
UNION
SELECT first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY first_name;

SELECT date_of_birth, last_name FROM directors
UNION
SELECT first_name, last_name FROM actors;


-- UNION ALL
/*
SELECT tcolumn1, column2 FROM table1
UNION ALL
SELECT column1, column2 FROM table2;
*/
SELECT first_name FROM directors
UNION
SELECT first_name FROM actors
ORDER BY first_name;

SELECT first_name FROM directors
UNION ALL
SELECT first_name FROM actors
ORDER BY first_name;



-- INTERSECT
/*
SELECT tcolumn1 FROM table1
INTERSECT
SELECT column1 FROM table2;
*/
SELECT first_name FROM directors
WHERE nationality = 'American'
INTERSECT
SELECT first_name FROM actors
ORDER BY first_name;


-- EXCEPT
/*
SELECT tcolumn1 FROM table1
EXCEPT
SELECT column1 FROM table2;
*/
SELECT first_name FROM directors
WHERE nationality = 'American'
EXCEPT
SELECT first_name FROM actors
ORDER BY first_name;












