/** Grocery List:
Apples (7)
Bananas (7)
Dark chocolate (3)
**/

/** create the db and put data into it **/

/** CREATE TABLE Groceries ();  **/
/**Notice we  make a PK but it does not auto increment  **/
CREATE TABLE Groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER);

/** Insert the first row **/
INSERT INTO Groceries VALuES (1, "Apples", 7);
INSERT INTO Groceries VALuES (2, "Bananas", 7);
INSERT INTO Groceries VALuES (3, "Dark chocolate", 3);