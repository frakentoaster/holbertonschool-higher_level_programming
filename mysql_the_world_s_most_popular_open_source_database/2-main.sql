# Subquery to list number of seasons by tv show
\! echo "\nNumber of season by TVShow ordered by name (A-Z)?"
SELECT name,(SELECT count(id) FROM Season
	WHERE TVShow.id = Season.tvshow_id)
	FROM TVShow
	ORDER BY name ASC;

# Display networks ordered by tv show name
\! echo "\nList of Network by TVShow ordered by name (A-Z)?"
SELECT name as 'TVShow name',
	(SELECT name FROM Network
		WHERE Network.id = TVShow.network_id)
	as 'Network name' FROM TVShow
	GROUP BY name;

# List of Fox (US) tv shows ordered by name A to Z
\! echo "\nList of TVShows ordered by name (A-Z) in the Network 'Fox (US)'?"
SELECT name FROM TVShow
	WHERE TVShow.network_id = (SELECT id FROM Network WHERE name = 'Fox (US)');

# List number of tv show episodes ordered by name A to Z
\! echo "\nNumber of episodes by TVShows ordered by name (A-Z)?"
SELECT TVShow.name, count(Episode.id) as nb_episodes FROM TVShow
	JOIN Season ON (TVShow.id = Season.tvshow_id)
	JOIN Episode ON (Season.id = Episode.season_id)
	GROUP BY TVShow.id
	ORDER BY TVShow.name;
