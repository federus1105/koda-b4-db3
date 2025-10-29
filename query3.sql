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