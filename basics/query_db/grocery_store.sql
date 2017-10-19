/** CREATE TABLE Groceries ();  **/
/**Notice we  make a PK but it does not auto increment  **/
CREATE TABLE Groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);


/** Insert the first row **/
INSERT INTO Groceries VALUES (1, "Apples", 7, 7);
INSERT INTO Groceries VALUES (2, "Bananas", 7, 5);
INSERT INTO Groceries VALUES (3, "Dark chocolate", 3, 1);
INSERT INTO Groceries VALUES (4, "Eggplant", 1, 2);
INSERT INTO Groceries VALUES (5, "Eggs", 12, 12);
INSERT INTO Groceries VALUES (6, "Figs", 6, 2);

/** Get a list of Groceries. names  **/
SELECT name FROM Groceries;

/**Not very organized.  Optimize by grouping by aisle **/
SELECT * FROM Groceries ORDER BY aisle;

/**Split the store with someone. 12 aisles 2 people is 6 aisles per person **/
SELECT * FROM Groceries WHERE aisle > 6 ORDER BY aisle;
SELECT * FROM Groceries WHERE aisle < 7 ORDER BY aisle;