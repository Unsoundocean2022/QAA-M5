-- All movies with a runtime over 100

SELECT * FROM movie WHERE runtime > 100;

Result: 2712 rows in set

-- All movies with more than 1000 votes

SELECT * FROM movie WHERE vote_count > 1000;

Result: 921 rows in set

-- All movies in order of popularity

SELECT * FROM movie ORDER BY popularity DESC;

Result: 4803 rows in set

-- All people with an id between 10000 - 12000

SELECT * FROM person WHERE person_id BETWEEN 10000 AND 12000;

Result: 1251 rows in set

-- All people in name ascending order (limit to 1000)

SELECT * FROM person ORDER BY person_name ASC LIMIT 1000;

Result: 1000 rows in set
