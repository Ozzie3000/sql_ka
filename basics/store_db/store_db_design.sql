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
INSERT INTO Books VALUES (4, "In Search of Lost Time", "Marcel Proust", "fiction", 606, 14);
INSERT INTO Books VALUES (5, "Ulysses", "James Joyce", "fiction", 412, 9);
INSERT INTO Books VALUES (6, "The Odyssey", "Homer", "fiction", 560, 11);
INSERT INTO Books VALUES (7, "War and Peace", "Leo Tolstoy", "fiction", 1296, 14);
INSERT INTO Books VALUES (8, "Moby Dick", "Herman Melville", "fiction", 544, 4);
INSERT INTO Books VALUES (9, "The Divine Comedy", "Dante Alighieri", "fiction", 928, 17);
INSERT INTO Books VALUES (10, "Hamlet", "William Shakespeare", "fiction", 342, 5);
INSERT INTO Books VALUES (11, "Adventures of Huckleberry Finn", "Mark Twain", "fiction", 224, 5);
INSERT INTO Books VALUES (12, "The Great Gatsby", "F. Scott Fitzgerald", "fiction", 180, 7);
INSERT INTO Books VALUES (13, "The Iliad", "Homer", "fiction", 704, 16);
INSERT INTO Books VALUES (14, "One Hundred Years of Solitude", "Gabriel Garcia Marquez", "fiction", 417, 10);
INSERT INTO Books VALUES (15, "Crime and Punishment", "Fyodor Dostoyevsky", "fiction", 430, 6);