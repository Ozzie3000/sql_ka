/** CREATE TABLE Groceries ();  **/
/**Notice we  make a PK but it does not auto increment  **/
CREATE TABLE Groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);


/** Insert the first row **/
INSERT INTO Groceries VALUES (1, "Apples", 7, 7);
INSERT INTO Groceries VALUES (2, "Bananas", 7, 5);
INSERT INTO Groceries VALUES (3, "Dark chocolate", 3, 6);
INSERT INTO Groceries VALUES (3, "Eggplant", 3, 6);
INSERT INTO Groceries VALUES (3, "Eggs", 3, 6);
INSERT INTO Groceries VALUES (3, "Figs", 3, 6);

