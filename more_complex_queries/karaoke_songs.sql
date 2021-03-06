/** **/
CREATE TABLE Songs (
	id INTEGER PRIMARY KEY,
	title TEXT,
	artist TEXT,
	mood TEXT,
	duration INTEGER,
	released INTEGER);

INSERT INTO Songs (title, artist, mood, duration, released)
    VALUES ("song a", "artist a", "mood a", 120, 1920);
INSERT INTO Songs (title, artist, mood, duration, released)
    VALUES ("song b", "artist b", "mood b", 130, 1930);
INSERT INTO Songs (title, artist, mood, duration, released)
    VALUES ("song c", "artist c", "mood c", 140, 1940);
INSERT INTO Songs (title, artist, mood, duration, released)
    VALUES ("song d", "artist d", "mood d", 150, 1950);
INSERT INTO Songs (title, artist, mood, duration, released)
    VALUES ("song e", "artist e", "mood e", 160, 1960);
INSERT INTO Songs (title, artist, mood, duration, released)
    VALUES ("song f", "artist f", "mood f", 170, 1970);
INSERT INTO Songs (title, artist, mood, duration, released)
    VALUES ("song g", "artist g", "mood g", 180, 1980);
INSERT INTO Songs (title, artist, mood, duration, released)
    VALUES ("song h", "artist h", " mood h", 190, 1990);

/**let's see the song titles first**/
SELECT title FROM Songs;

/**your buddy only wants to sing songs of a particular mood (c) or songs in 80's or 90's**/
/**show those results use OR**/
SELECT title FROM Songs WHERE mood LIKE "%mood c%" or released > 1979;

/**running out of songs.**/
/**find songs less than 170, mood contatins mood, released before 1960**/
SELECT title FROM Songs WHERE duration < 170 AND mood LIKE "%mood%" AND released < 1960;