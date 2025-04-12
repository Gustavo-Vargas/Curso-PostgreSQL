-- Using Mathematical Operators
/*
+ - / * %
*/
SELECT 5 + 6 AS addition;
SELECT 8 - 3 AS subtraction;
SELECT 30 - 3 AS division;
SELECT 4 * 6 AS multiplication;

SELECT 15 % 4 modulus;

SELECT * FROM movie_revenues;

SELECT movie_id, (domestic_takings + international_takings) AS total_takings FROM movie_revenues; 
