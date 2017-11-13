CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("coat", "black surcoat ");
INSERT INTO clothes (type, design)
    VALUES ("pants", "dark grey dress pants");
INSERT INTO clothes (type, design)
    VALUES ("tshirt", "charcoal triblend");

/*Use ALTER to add a 'price' column to the table. */
ALTER TABLE clothes ADD price INTEGER;

/*select all the columns in each row to see what your table looks like now.*/
SELECT * FROM clothes;