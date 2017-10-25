/** Store the goods or good are stored here **/
/** the interactive tool doesn't like my float; gotta learn how do do this later. Using whole currency
CREATE TABLE Books (id INTEGER, author TEXT, category TEXT, pages INTEGER, price FLOAT(3000,2));
**/

CREATE TABLE Books (id INTEGER, author TEXT, title TEXT, category TEXT, pages INTEGER, price INTEGER);

INSERT INTO Books VALUES (1, "John Steinbeck", "The Winter of our Discontent", "fiction", 311, 13);
/**test to see first row
SELECT * FROM Books;
**/
INSERT INTO Books VALUES (2, "Ernest Hemingway", "For Whom the Bell Tolls", "fiction", 480, 11);
INSERT INTO Books VALUES (3, "Don Quixote", "Miguel de Cervantes", "fiction", 114 , 12);
INSERT INTO Books VALUES (4, "", "", "", 1, 1);
INSERT INTO Books VALUES (5, "", "", "", 1, 1);
INSERT INTO Books VALUES (6, "", "", "", 1, 1);
INSERT INTO Books VALUES (7, "", "", "", 1, 1);
INSERT INTO Books VALUES (8, "", "", "", 1, 1);
INSERT INTO Books VALUES (9, "", "", "", 1, 1);
INSERT INTO Books VALUES (10, "", "", "", 1, 1);
INSERT INTO Books VALUES (11, "", "", "", 1, 1);
INSERT INTO Books VALUES (12, "", "", "", 1, 1);
INSERT INTO Books VALUES (13, "", "", "", 1, 1);
INSERT INTO Books VALUES (14, "", "", "", 1, 1);
INSERT INTO Books VALUES (15, "", "", "", 1, 1);