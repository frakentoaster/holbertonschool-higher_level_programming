# List of tv shows by genre
\! echo "List of all TVShows by all Genres ordered by genre name (A-Z)? (if a genre has 0 TVShow, please display NULL)"
SELECT Genre.name AS "Genre name", TVShow.name AS "TVShow name" FROM TVShow
	RIGHT JOIN TVShowGenre ON (TVShow.id = TVShowGenre.tvshow_id)
	RIGHT JOIN Genre ON (TVShowGenre.genre_id = Genre.id)
	ORDER BY Genre.name;

# List of names of pilot episodes from each tv show
\! echo "\nName of the pilot (first episode of the first season) of each TVShow ordered by TVShow name (A-Z)?"
SELECT TVShow.name AS "TVShow name", Episode.name AS "Episode name" FROM TVShow
	JOIN Season ON (TVShow.id = Season.tvshow_id)
	JOIN Episode ON (Season.id = Episode.season_id)
		WHERE (Episode.number = 1 AND Season.number = 1)
	ORDER BY TVShow.name;

# List of tv show genres
\! echo "\nList of all Genres by all TVShows ordered by TVShow name (A-Z)? (if a genre has 0 TVShow, please display NULL as TVShow name)"
SELECT TVShow.name AS "TVShow name", Genre.name AS "Genre name" FROM TVShow
	RIGHT JOIN TVShowGenre ON (TVShow.id = TVShowGenre.tvshow_id)
	RIGHT JOIN Genre ON (TVShowGenre.genre_id = Genre.id)
	ORDER BY TVShow.name;
