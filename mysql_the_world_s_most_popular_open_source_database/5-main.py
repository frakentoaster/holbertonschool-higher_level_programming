''' Script fetches TVShows, Seasons, and Episodes from MySql Database '''
import mysql.connector

cnx = mysql.connector.connect(user='student',
                                password = 'aLQQLXGQp2rJ4Wy5',
                                host ='173.246.108.142',
                                port = '3306',
                                charset = 'utf8',
                                use_unicode= False,
                                database ='Project_169')

cursor = cnx.cursor()

shows = "SELECT TVShow.name, TVShow.id FROM TVShow ORDER BY TVShow.name"

seasons = "SELECT Season.id, Season.number FROM Season WHERE Season.tvshow_id = "

cursor.execute(shows)

rows = cursor.fetchall()
for show in rows:
	cursor.execute(seasons + str(show[1]))
	seasons_list = cursor.fetchall()
	print show[0], ":"
	for season in seasons_list:
		print "\t Season" + str(season[1])
		episodes = "SELECT Episode.name, Episode.number FROM Episode WHERE Episode.season_id = " + str(season[0]) + " ORDER BY Episode.number"
		cursor.execute(episodes)
		episode_list = cursor.fetchall()
		for ep in episode_list:
			print "\t\t" + str(ep[1]) + ". " + str(ep[0])
