/*
 * Holberton Project 161 - Basic SQL Playground
 * Script lists unique last names of actors from a given film
 * Display the number of people above age 30
 * Join all tables and filter results
 * Sum all ages of people in Person table
 */
 
SELECT DISTINCT last_name FROM Person JOIN TVShowPerson ON (
	person_id = id AND tvshow_id = (
		SELECT id FROM TVShow WHERE name = 'Game of Thrones'
	)
);

SELECT count(age) FROM Person WHERE age > 30;

SELECT Person.id, first_name, last_name, age, color, TVShow.name
	FROM Person
	JOIN EyesColor ON Person.id = EyesColor.person_id
	JOIN TVShowPerson ON Person.id = TVShowPerson.person_id
	JOIN TVShow ON TVShowPerson.tvshow_id = TVShow.id;

SELECT sum(age) FROM Person;
