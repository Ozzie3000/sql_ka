CREATE TABLE Persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);
    
INSERT INTO Persons (name, age) VALUES ("Hugo Richard", 23);
INSERT INTO Persons (name, age) VALUES ("Judy Garland", 25);
INSERT INTO Persons (name, age) VALUES ("Fred  Astaire", 44);
INSERT INTO Persons (name, age) VALUES ("Ginger Rogers", 20);
INSERT INTO Persons (name, age) VALUES ("Johnny JoJackson", 38);
INSERT INTO Persons (name, age) VALUES ("Bob UpnDown", 23);


CREATE table Hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO Hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO Hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO Hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO Hobbies (person_id, name) VALUES (2, "singing");
INSERT INTO Hobbies (person_id, name) VALUES (3, "dancing");
INSERT INTO Hobbies (person_id, name) VALUES (3, "singing");
INSERT INTO Hobbies (person_id, name) VALUES (3, "acting");
INSERT INTO Hobbies (person_id, name) VALUES (4, "dancing");
INSERT INTO Hobbies (person_id, name) VALUES (5, "hidding");
INSERT INTO Hobbies (person_id, name) VALUES (6, "not sinking");


/*insert a person*/
INSERT INTO Persons (name, age) VALUES ("John Fogerty", 45);

/*insert a hobby*/
INSERT INTO Hobbies (person_id, name) VALUES (7, "Rocking out");

/* select the 2 tables with a join so that you can see each person's name next to their hobby*/
SELECT Persons.name, Hobbies.name AS hobby FROM Persons
	JOIN Hobbies
	ON Persons.id = Hobbies.person_id;

	/* add an additional query that shows only the name and hobbies of 'John Fogerty', using JOIN combined with WHERE*/
SELECT Persons.name, Hobbies.name FROM Persons
    JOIN Hobbies
    ON Persons.id = Hobbies.person_id
    WHERE Persons.name = "John Fogerty";