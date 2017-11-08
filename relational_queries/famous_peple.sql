/* Create table about the people and what they do here 
n this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists.
*/
CREATE TABLE Famous_peeps(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	firstname TEXT,
	lastname TEXT);

INSERT INTO Famous_peeps (firstname, lastname) VALUES ("james", "dean");
INSERT INTO Famous_peeps (firstname, lastname) VALUES ("john", "wayne");
INSERT INTO Famous_peeps (firstname, lastname) VALUES ("pilar", "pallete");
INSERT INTO Famous_peeps (firstname, lastname) VALUES ("judy", "garland");
INSERT INTO Famous_peeps (firstname, lastname) VALUES ("david", "rose");
INSERT INTO Famous_peeps (firstname, lastname) VALUES ("james", "stewart");
INSERT INTO Famous_peeps (firstname, lastname) VALUES ("gloria", "mclean");
INSERT INTO Famous_peeps (firstname, lastname) VALUES ("humphrey", "bogart");
INSERT INTO Famous_peeps (firstname, lastname) VALUES ("helen", "menken");
INSERT INTO Famous_peeps (firstname, lastname) VALUES ("cary", "grant");

CREATE TABLE Movies (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	Famous_peeps_id INTEGER,
	movie_name TEXT);

INSERT INTO Movies (movie_name) VALUES (1, "rebel without a cause");
INSERT INTO Movies (movie_name) VALUES (2, "jet pilot");
INSERT INTO Movies (movie_name) VALUES (3, "the alamo");
INSERT INTO Movies (movie_name) VALUES (4, "the wizard of oz");
INSERT INTO Movies (movie_name) VALUES (6, "shop worm angel");
INSERT INTO Movies (movie_name) VALUES (8, "the maltese falcon");
INSERT INTO Movies (movie_name) VALUES (10, "none but the lonely heart");