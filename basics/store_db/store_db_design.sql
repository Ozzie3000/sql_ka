/** Store the goods or good are stored here **/
/** the interactive tool doesn't like my float; gotta learn how do do this later. Using whole currency
CREATE TABLE Books (id INTEGER, author TEXT, category TEXT, pages INTEGER, price FLOAT(3000,2));
**/

CREATE TABLE Books (id INTEGER, author TEXT, title TEXT, category TEXT, pages INTEGER, price INTEGER);

INSERT INTO Books VALUES (1, "John Steinbeck", "The Winter of our Discontent", "fiction", 311, 13);

/**test to see first row**/
SELECT * FROM Books;
