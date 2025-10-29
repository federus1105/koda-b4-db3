-- 1
SELECT directors.first_name, count(directors_genres.genre) amount_genre FROM directors
JOIN directors_genres ON directors_genres.director_id = directors.id
GROUP BY directors.first_name, directors.id ORDER BY amount_genre DESC;