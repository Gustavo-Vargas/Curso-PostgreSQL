-- 1.- Select the first name, last name and date of birth for the oldest actors of each gender.
SELECT ac1.first_name, ac1.last_name, ac1.date_of_birth FROM actors ac1
WHERE ac1.date_of_birth =
(SELECT MIN(ac2.date_of_birth) FROM actors ac2
WHERE ac2.gender = ac1.gender);

-- 2.- Select the movie name, movie length and age certificate for movies 
-- with an above average length for their age certificate.
SELECT mo1.movie_name, mo1.movie_length, mo1.age_certificate FROM movies mo1
WHERE movie_length >
(SELECT AVG(mo2.movie_length) FROM movies mo2
WHERE mo2.age_certificate = mo1.age_certificate)
ORDER BY mo1.age_certificate;