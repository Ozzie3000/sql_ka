CREATE TABLE Artists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    country TEXT,
    genre TEXT);

INSERT INTO Artists (name, country, genre)
    VALUES ("Elvis Presley", "US", "Rock");
INSERT INTO Artists (name, country, genre)
    VALUES ("Led Zeppelin", "US", "Hard rock");
INSERT INTO Artists (name, country, genre)
    VALUES ("ABBA", "Sweden", "Disco");
INSERT INTO Artists (name, country, genre)
    VALUES ("Oasis", "UK", "Britpop");
INSERT INTO Artists (name, country, genre)
    VALUES ("Rush", "Canada", "Progressive metal");
INSERT INTO Artists (name, country, genre)
    VALUES ("Meatloaf", "US", "Hard rock");
INSERT INTO Artists (name, country, genre)
    VALUES ("Bert Weedon", "UK", "Country");
INSERT INTO Artists (name, country, genre)
    VALUES ("Shania Twain", "Canada", "Country");
INSERT INTO Artists (name, country, genre)
    VALUES ("Maroon 5", "US", "Pop");
INSERT INTO Artists (name, country, genre)
    VALUES ("Guns N' Roses", "US", "Hard rock");
INSERT INTO Artists (name, country, genre)
    VALUES ("Patsy Cline", "US", "Country");
INSERT INTO Artists (name, country, genre)
    VALUES ("Bob Marley", "Jamaica", "Reggae");

CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist TEXT,
    title TEXT);

INSERT INTO Songs (artist, title)
    VALUES ("Elvis Presley", "Return to Sender");
INSERT INTO Songs (artist, title)
    VALUES ("Maroon 5", "Sugar");
INSERT INTO Songs (artist, title)
    VALUES ("Rush", "YYZ");
INSERT INTO Songs (artist, title)
    VALUES ("Rush", "Closer to the Heart");
INSERT INTO Songs (artist, title)
    VALUES ("Bert Weedon", "China Doll");
INSERT INTO Songs (artist, title)
    VALUES ("Patsy Cline", "I Fall to Pieces");
INSERT INTO Songs (artist, title)
    VALUES ("Led Zeppelin", "Stairway to heaven");
INSERT INTO Songs (artist, title)
    VALUES ("ABBA", "Mamma mia");
INSERT INTO Songs (artist, title)
    VALUES ("Oasis", "Wonderwall");
INSERT INTO Songs (artist, title)
    VALUES ("Oasis", "Champagne Supernova");
INSERT INTO Songs (artist, title)
    VALUES ("Guns N' Roses", "Welcome to the Jungle");
    

/*find a song with "fall" in it*/
SELECT artist, title FROM Songs WHERE title LIKE "%fall%";

/*find pop artists in artist through songs table*/
SELECT artist FROM songs WHERE artist IN (SELECT name FROM artists WHERE genre = "Pop");

/*find songs in songs table where that person is in the artist table as genre = Pop*/
SELECT title FROM songs WHERE artist IN (SELECT name FROM artists WHERE genre = "Pop");