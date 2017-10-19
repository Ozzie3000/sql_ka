/** Create db for movies **/
CREATE TABLE Movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);

/** go wild and pick some Movies to seed db **/
INSERT INTO Movies VALUES (1, "Avatar", 2009);
INSERT INTO Movies VALUES (2, "Jaws", 1975);
INSERT INTO Movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO Movies VALUES (4, "Primer", 2004);
INSERT INTO Movies VALUES (5, "The Lion King", 1994);
INSERT INTO Movies VALUES (6, "The Babadook", 2014);

/** get all rows from Movies DB **/
SELECT * FROM Movies;