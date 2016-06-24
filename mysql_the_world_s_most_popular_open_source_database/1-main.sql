# List tv show id and number of seasons
\! echo "\nNumber of seasons by tvshow_id?"
SELECT tvshow_id, count(id) FROM Season
	GROUP BY tvshow_id;

# List number of occurrences of same episode number, ordered by episode number.
\! echo "\nNumber of occurrences of the same episode number ordered by episode number?"
SELECT number, count(id) FROM Episode
	GROUP BY number
	ORDER BY number ASC;

# List of Top 3 tv show genres, ordered by occurrences.
\! echo "\nTop 3 of the Genre's occurrences in all TVShows ordered by this number?"
SELECT genre_id, count(genre_id) as occurrences_genre FROM TVShowGenre
	GROUP BY genre_id
	ORDER BY occurrences_genre DESC
	LIMIT 3;

# List all tv shows containing the letter sequence 'th'.
\! echo "\nSearch all TVShow with this letter sequence 'th' case insensitive and display with the name in lowercase?"
SELECT LOWER(name) as name FROM TVShow WHERE name LIKE '%th%';
