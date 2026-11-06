# 1. Show the films with a budget greater than $10 million and a ranking lower than 6.

SELECT title, budget, ranking
FROM movie_db.movies
WHERE budget > 10000000 AND ranking < 6;

# 2. Show the action films with a rating higher than 8.8, produced after 2009.

# Classic WHERE query
SELECT title, rating, year
FROM movie_db.movies, movie_db.genres
WHERE movie_db.movies.movie_id = movie_db.genres.movie_id AND 
genre_name = 'Action' AND
rating > 8.8 AND
year > 2009;

# Classic JOIN query
SELECT title, rating, year
FROM movie_db.movies m
JOIN movie_db.genres g ON m.movie_id = g.movie_id
WHERE genre_name = 'Action' AND
rating > 8.8 AND
year > 2009;

# 3. Show the drama films with a duration of more than 150 minutes and more than 2 Oscars.

# Classic JOIN query
SELECT title Title, genre_name Genre, duration Duration, oscars Oscars
FROM movie_db.movies m
JOIN movie_db.genres g ON m.movie_id = g.movie_id
WHERE genre_name = 'DRAMA' AND
duration > 150 AND
oscars > 2;

# Classic IN query
SELECT title, duration, oscars
FROM movie_db.movies m
WHERE duration > 150 AND
oscars > 2 AND
movie_id IN(SELECT movie_id FROM genres WHERE genre_name = 'Drama');

# 4. Show the thriller films whose budget is greater than 25 million$.

# Classic JOIN query
SELECT title, genre_name, budget
FROM movie_db.movies m
JOIN movie_db.genres g ON m.movie_id = g.movie_id
WHERE genre_name = 'Thriller' AND 
budget > 25000000;

# Classic IN query
SELECT title, budget
FROM movie_db.movies m
WHERE budget > 25000000 and m.movie_id IN
   (SELECT movie_id FROM movie_db.genres WHERE genre_name = 'Thriller');

# 5. Show the drama films whose language is Italian and produced between 1990-2000.		 

# Classic JOIN query with three tables
SELECT title, genre_name, language_name, year
FROM movie_db.movies m
JOIN movie_db.languages l ON m.movie_id = l.movie_id
JOIN movie_db.genres g ON m.movie_id = g.movie_id
WHERE genre_name = 'Drama' AND
language_name = 'Italian' AND
year >= 1990 AND year <= 2000;

# 6. Show the Quentin Tarantino films which have more than 500000 votes and produced before 2000.	

# Classic JOIN query
SELECT title, votes, year, director_name
FROM movie_db.movies m
JOIN movie_db.producer_countries p ON m.movie_id = p.movie_id
JOIN movie_db.countries c ON p.country_id = c.country_id
JOIN movie_db.movie_directors d ON m.movie_id = d.movie_id
JOIN movie_db.directors md ON d.director_id = md.director_id
WHERE director_name = 'Quentin Tarantino' AND
votes > 500000 AND
year < 2000;