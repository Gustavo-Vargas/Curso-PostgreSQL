-- 1.- How many directors are there per nationality?
SELECT nationality, COUNT(nationality) FROM directors
GROUP BY nationality;

-- 2.- What is the sum total movie length for each age certidicate and movie language combination?
SELECT movie_lang, age_certificate, SUM(movie_length) FROM MOVIES
GROUP BY movie_lang, age_certificate
ORDER BY movie_lang, age_certificate;

-- 3.- Return the movie languages wich have a sum total movie length of over 500 minutes
SELECT movie_lang, SUM(movie_length) FROM movies
GROUP BY movie_lang
HAVING SUM(movie_length) > 500;