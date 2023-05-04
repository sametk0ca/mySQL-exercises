use movie_db;
	SELECT
    AVG(movies.budget) AS avg_budget
	FROM
    movies 
	WHERE 
    movies.movie_id IN 
    (SELECT 
    movie_directors.movie_id
	FROM 
    movie_directors 
	JOIN 
    directors  
    ON movie_directors.director_id = directors.director_id 
    AND 
    directors.director_name = 'Peter Jackson'
);
