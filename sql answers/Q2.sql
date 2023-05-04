use movie_db;
	SELECT 
    movies.title, movies.rating, movies.year
	FROM
    movies 
	INNER JOIN 
    genres  
    ON movies.movie_id = genres.movie_id
	WHERE 
	genres.genre_name = 'Action' 
    AND movies.rating > 8.8 
    AND movies.year > 2009;
