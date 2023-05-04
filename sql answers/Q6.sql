SELECT movies.title
FROM movies 
JOIN genres  ON movies.movie_id = genres.movie_id
WHERE genres.genre_name = 'thriller' AND movies.budget > 25000000;
