SELECT movies.title
FROM movies 
JOIN genres  ON movies.movie_id = genres.movie_id AND genres.genre_name = 'history'
WHERE movies.duration BETWEEN 100 AND 200
  AND movies.movie_id IN (
    SELECT movie_id FROM producer_countries
    WHERE country_id IN (SELECT country_id FROM countries WHERE country_name = 'USA')
);
