/** back to the grocery store.  Aggregate data **/
/**Notice we  make a PK but it does not auto increment  **/
CREATE TABLE Groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);


/** Insert the first row **/
INSERT INTO Groceries VALUES (1, "Apples", 7, 7);
INSERT INTO Groceries VALUES (2, "Bananas", 7, 5);
INSERT INTO Groceries VALUES (3, "Dark chocolate", 3, 1);
INSERT INTO Groceries VALUES (4, "Eggplant", 1, 2);
INSERT INTO Groceries VALUES (5, "Eggs", 12, 12);
INSERT INTO Groceries VALUES (6, "Figs", 6, 2);

/** I like to know total so we know we got everything **/
/** SELECT SUM(column_name) FROM Table_name; **/
SELECT SUM(quantity) FROM Groceries;
/**sum should be 36**/

/** what is the most bought single item **/
SELECT MAX(quantity) FROM Groceries;
/** shows 12, but not what item**/

/**make sure right items after each aisle **/
SELECT SUM(quantity) FROM Groceries GROUP BY aisle;
/**we only get quanities for each aisle. **/

/**Add aisle to see sum for that aisle **/
SELECT aisle, SUM(quantity) FROM Groceries GROUP BY aisle;
/**now we see sum of items per aisle number**/
/** sql engine: grouping of rows based on aisles, then sum of groups, then aisle value it saw which is ok since they are the same **/
/** where this can be a problem if you change that select to name.  It only gives you first item even if there are more **/