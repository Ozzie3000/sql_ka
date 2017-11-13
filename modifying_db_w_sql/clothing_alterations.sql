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

/*assign each item a price, using UPDATE - 
item 1 should be 10 dollars, item 2 should be 20 dollars, item 3 should be 30 dollars.
check all rows after*/
UPDATE clothes SET price = 10 WHERE id = 1;
UPDATE clothes SET price = 20 WHERE id = 2;
UPDATE clothes SET price = 30 WHERE id = 3;
SELECT * FROM clothes;

/* insert a new item into the table that has all three attributes filled in, including 'price'. 
Do one final SELECT of all the rows to check it worked*/
INSERT INTO clothes (type, design, price) VALUES ("socks", "grey toe socks", 8);
SELECT * FROM clothes;