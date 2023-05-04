use movie_db;
	SELECT
    title 
    FROM 
    movies
	INNER JOIN 
    languages 
    ON movies.movie_id = languages.movie_id
	WHERE 
    language_name = "Italian" 
    AND year >= 1990 
    AND year <= 2000
