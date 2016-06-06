/*
 *  Script inserts foreign key and attr into Table,
 *  Creates new table, adding values and linking to other Tables.
 */

INSERT INTO EyesColor VALUES
	((SELECT id FROM Person WHERE last_name = 'Snow'), 'Brown');
INSERT INTO EyesColor VALUES
	((SELECT id FROM Person WHERE last_name = 'Stark'), 'Green');*/

CREATE TABLE TVShow (
	id INT PRIMARY KEY NOT NULL,
	name CHAR(128) NOT NULL
);

CREATE TABLE TVShowPerson (
	tvshow_id INT NOT NULL,
	person_id INT NOT NULL,
	FOREIGN KEY(tvshow_id) REFERENCES TVShow(id),
	FOREIGN KEY(person_id) REFERENCES Person(id)
);

INSERT INTO TVShow (name) VALUES ('Homeland');
INSERT INTO TVShow (name) VALUES ('The big bang theory');
INSERT INTO TVShow (name) VALUES ('Game of Thrones');
INSERT INTO TVShow (name) VALUES ('Breaking bad');

INSERT INTO TVShowPerson (tvshow_id, person_id) VALUES (
	(SELECT TVShow.id from TVShow WHERE name = 'Breaking bad'),
	(SELECT Person.id from Person WHERE last_name = 'White')
);
INSERT INTO TVShowPerson (tvshow_id, person_id) VALUES (
	(SELECT TVShow.id from TVShow WHERE name = 'Game of Thrones'),
	(SELECT Person.id from Person WHERE first_name = 'Jaime')
);
INSERT INTO TVShowPerson (tvshow_id, person_id) VALUES (
	(SELECT TVShow.id from TVShow WHERE name = 'The big bang theory'),
	(SELECT Person.id from Person WHERE last_name = 'Cooper')
);
INSERT INTO TVShowPerson (tvshow_id, person_id) VALUES (
	(SELECT TVShow.id from TVShow WHERE name = 'Game of Thrones'),
	(SELECT Person.id from Person WHERE first_name = 'Tyrion')
);
INSERT INTO TVShowPerson (tvshow_id, person_id) VALUES (
	(SELECT TVShow.id from TVShow WHERE name = 'Game of Thrones'),
	(SELECT Person.id from Person WHERE last_name = 'Snow')
);
INSERT INTO TVShowPerson (tvshow_id, person_id) VALUES (
	(SELECT TVShow.id from TVShow WHERE name = 'Game of Thrones'),
	(SELECT Person.id from Person WHERE last_name = 'Stark')
);

SELECT * FROM Person;
SELECT * FROM EyesColor;
SELECT * FROM TVShow;
SELECT * FROM TVShowPerson;
