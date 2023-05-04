SELECT movies.title, movies.duration, movies.oscars
FROM movies 
INNER JOIN genres  ON movies.movie_id = genres.movie_id
WHERE genres.genre_name = 'Drama' AND movies.duration > 150 AND movies.oscars > 2;
