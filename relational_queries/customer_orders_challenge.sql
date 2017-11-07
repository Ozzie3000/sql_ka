CREATE TABLE Customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);
    
INSERT INTO Customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO Customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO Customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE Orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO Orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 3000.00);
INSERT INTO Orders (customer_id, item, price)
    VALUES (2, "Titanium frame eye glasses", 350.00);
INSERT INTO Orders (customer_id, item, price)
    VALUES (1, "Trench coat", 200.00);

/*shows all customers even ones with no order. SHow name, email, item, price of orders*/
SELECT Customers.name, Customers.email, Orders.item, Orders.price FROM Customers
    LEFT OUTER JOIN Orders
    ON Customers.id = Orders.customer_id;

/*create another query that will result in one row per each customer, 
with their name, email, and total amount of money they've spent on orders. 
Sort the rows according to the total money spent, from the most spent to the least spent
*/
SELECT Customers.name, Customers.email, SUM(price) AS totalspent FROM Customers
    LEFT OUTER JOIN Orders
    ON Customers.id = Orders.customer_id
    GROUP BY totalspent DESC