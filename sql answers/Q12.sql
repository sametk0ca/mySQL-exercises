use movie_db;
	SELECT 
    movies.title, movies.votes
	FROM
    movies
	INNER JOIN
    producer_countries 
    ON movies.movie_id = producer_countries.movie_id
	INNER JOIN 
    countries 
    ON producer_countries.country_id = countries.country_id
	WHERE 
    countries.country_name = 'USA'
	ORDER BY 
    movies.votes DESC
	LIMIT 1;
