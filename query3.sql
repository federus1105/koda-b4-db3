-- 1
SELECT directors.first_name, count(directors_genres.genre) amount_genre FROM directors
JOIN directors_genres ON directors_genres.director_id = directors.id
GROUP BY directors.first_name, directors.id ORDER BY amount_genre DESC;

--2 
SELECT actors.first_name, count(roles.role) amount_role FROM actors
JOIN roles ON roles.actor_id = actors.id
GROUP BY actors.first_name, roles.role
HAVING count(roles.role) > 5
ORDER BY amount_role DESC
LIMIT 10
;
--3 
SELECT directors.first_name, COUNT(movies_directors.movie_id) AS amount_movie FROM directors
JOIN movies_directors ON movies_directors.director_id = directors.id
GROUP BY directors.first_name, directors.id
ORDER BY amount_movie DESC 
LIMIT 10;

-- 4
SELECT year, count(year) as jumlahnya
FROM movies
GROUP BY year
ORDER BY jumlahnya DESC
LIMIT 1;

-- 5
SELECT movies.name, string_agg(movies_genres.genre, ', ') AS "Genre" FROM movies
JOIN movies_genres ON movies_genres.movie_id = movies.id
GROUP BY movies.name;