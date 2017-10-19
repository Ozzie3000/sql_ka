/** Make a db to house some books **/

CREATE TABLE Books (id INTEGER PRIMARY KEY, name TEXT, rating TEXT);

/** insert some books into the rows **/
INSERT INTO Books Values (1, "Principals of Mathematics", 10);
INSERT INTO Books Values (2, "The World as I see it", 10);
INSERT INTO Books Values (3, "On the Electrodymanics of Moving Celestial Bodies", 10);

SELECT * FROM Books;