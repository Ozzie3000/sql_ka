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
INSERT INTO Groceries Values (1, "Apples", 7);
INSERT INTO Groceries Values (2, "Bananas", 7);
INSERT INTO Groceries Values (3, "Dark chocolate", 3);

/** Select EVERYTHING from the groceries table **/
SELECT * FROM Groceries;