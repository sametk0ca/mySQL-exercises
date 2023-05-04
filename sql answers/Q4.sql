use movie_db;
	SELECT
    title
	FROM 
    movies
	WHERE 
    oscars > 2 
    AND 
    movie_id IN (
	SELECT 
    movie_id
	FROM 
    stars 
	INNER JOIN 
    movie_stars 
	ON movie_stars.star_id = stars.star_id 
	WHERE 
    star_name = "Orlando Bloom"
	AND 
    movie_id IN (
	SELECT 
    movie_id
	FROM 
    stars 
	INNER JOIN 
    movie_stars 
	ON movie_stars.star_id = stars.star_id
	WHERE 
    star_name = "Ian McKellen" ));
