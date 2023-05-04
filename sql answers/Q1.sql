use movie_db;
	SELECT
    title, budget, ranking
    FROM
    movies
    WHERE
    budget > 10000000 
    AND
    ranking < 6;

