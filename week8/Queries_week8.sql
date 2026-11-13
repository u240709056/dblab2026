# 1. Show the Quentin Tarantino films which have more than 500000 votes and produced before 2000.

# Classic JOIN query
SELECT title, votes, year, director_name
FROM movie_db.movies m
JOIN movie_db.producer_countries p ON m.movie_id = p.movie_id
JOIN movie_db.countries c ON p.country_id = c.country_id
JOIN movie_db.movie_directors d ON m.movie_id = d.movie_id
JOIN movie_db.directors md ON d.director_id = md.director_id
# director_name = 'Quentin%'   <-- '%' is used for checking if a cell contains the given piece of word.
WHERE director_name = 'Quentin Tarantino' AND
votes > 500000 AND
year < 2000;

# 2. Show the films that Tom Hanks has act and have won more than 3 Oscars.

# Classic JOIN query
SELECT title, oscars, star_name
FROM movie_db.movies m
JOIN movie_db.movie_stars ms ON m.movie_id = ms.movie_id
JOIN movie_db.stars s ON ms.star_id = s.star_id
WHERE star_name = 'Tom Hanks' AND 
oscars >= 3;

# 3. Show the history films produced in USA and whose duration is between 100-200 minutes.
 
# Classic JOIN query
SELECT title, duration, country_name, genre_name
FROM movie_db.movies m
JOIN movie_db.genres g ON m.movie_id = g.movie_id
JOIN movie_db.producer_countries pc ON m.movie_id = pc.movie_id
JOIN movie_db.countries c ON pc.country_id = c.country_id
WHERE genre_name = 'History' AND
country_name = 'USA' AND
duration >= 100 AND duration <= 200;

# 4.Compute the average budget of the films directed by Peter Jackson.

# Classic JOIN query
SELECT director_name, AVG(budget)
FROM movie_db.movies m
JOIN movie_db.producer_countries p ON m.movie_id = p.movie_id
JOIN movie_db.countries c ON p.country_id = c.country_id
JOIN movie_db.movie_directors d ON m.movie_id = d.movie_id
JOIN movie_db.directors md ON d.director_id = md.director_id
WHERE director_name = 'Peter Jackson'
GROUP BY director_name;

# 5.Show the Francis Ford Coppola film that has the maximum budget.

# Classic JOIN query
SELECT director_name, MAX(budget)
FROM movie_db.movies m
JOIN movie_db.producer_countries p ON m.movie_id = p.movie_id
JOIN movie_db.countries c ON p.country_id = c.country_id
JOIN movie_db.movie_directors d ON m.movie_id = d.movie_id
JOIN movie_db.directors md ON d.director_id = md.director_id
WHERE director_name = 'Francis Ford Coppola'
GROUP BY director_name;

# 6.Show the film that has the most vote and has been produced in USA.

# Classic JOIN query
SELECT title, votes, country_name
FROM movie_db.movies m
JOIN movie_db.producer_countries pc ON m.movie_id = pc.movie_id
JOIN movie_db.countries c ON pc.country_id = c.country_id
WHERE country_name = 'USA' AND 
votes = (SELECT MAX(votes)
FROM movie_db.movies m
JOIN movie_db.producer_countries pc ON m.movie_id = pc.movie_id
JOIN movie_db.countries c ON pc.country_id = c.country_id
WHERE country_name = 'USA'
GROUP BY country_name);

# 7. List all stars who have acted in more than 1 films

# Classic JOIN query
SELECT star_name, COUNT(m.movie_id) AS movie_count
FROM movie_db.movies m
JOIN movie_db.movie_stars ms ON m.movie_id = ms.movie_id
JOIN movie_db.stars s ON ms.star_id = s.star_id
GROUP BY star_name
HAVING movie_count > 1;
