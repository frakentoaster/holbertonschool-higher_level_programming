# Display all tables
\! echo "\nList of all tables?"
SHOW TABLES;

# Display specific table structures
\! echo "\nDisplay the table structure of TVShow, Genre and TVShowGenre?"
SHOW CREATE TABLE TVShow;
SHOW CREATE TABLE Genre;
SHOW CREATE TABLE TVShowGenre;

# List tv shows with id and name. Sorted by name from A to Z.
\! echo "\nList of TVShows, only id and name ordered by name (A-Z)?"
SELECT id, name FROM TVShow
    ORDER BY name ASC;

# List of film genres, with id and name. Sorted by name from Z to A.
\! echo "\nList of Genres, only id and name ordered by name (Z-A)?"
SELECT id, name FROM Genre
    ORDER BY name DESC;

# List networks with id and name.
\! echo "\nList of Network, only id and name?"
SELECT id, name FROM Network;

# List number of tv episodes in the database.
\! echo "\nNumber of episodes in the database?"
SELECT count(id) FROM Episode;
