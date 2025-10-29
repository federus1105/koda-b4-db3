-- MELAKUKAN JOIN DIRECTORS DAN GENRE KE TABLE MOVIES
SELECT movies.id, movies.name, movies.rankscore,
movies_genres.genre,
directors.first_name
FROM movies 
JOIN movies_directors ON movies_directors.movie_id = movies.id
JOIN movies_genres ON movies_genres.movie_id = movies.id
JOIN directors ON directors.id = movies_directors.director_id
LIMIT 50;


-- MELAKUKAN JOIN MOVIES DAN ROLES BERDASARKAN TABLE ACTORS
SELECT roles.role, movies.name, actors.first_name FROM roles
JOIN movies ON roles.movie_id = movies.id
JOIN actors ON roles.actor_id = actors.id;