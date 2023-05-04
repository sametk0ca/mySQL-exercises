use movie_db;
	SELECT
    movies.title
	FROM
    movies
	INNER JOIN
    movie_directors 
    ON movies.movie_id = movie_directors.movie_id
	INNER JOIN 
    directors 
    ON movie_directors.director_id = directors.director_id
	WHERE 
    directors.director_name = 'Francis Ford Coppola'
	ORDER BY 
    movies.budget ASC
	LIMIT 1;
