CREATE TABLE Persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO Persons (fullname, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO Persons (fullname, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO Persons (fullname, age) VALUES ("Banana FoFanna", 14);
INSERT INTO Persons (fullname, age) VALUES ("Shish Kabob", 20);
INSERT INTO Persons (fullname, age) VALUES ("Fluffy Sparkles", 8);

CREATE table Hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO Hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO Hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO Hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO Hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO Hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO Hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO Hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO Hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO Hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO Hobbies (person_id, name) VALUES (4, "meowing");

CREATE table Friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO Friends (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO Friends (person1_id, person2_id)
    VALUES (2, 3);
    
/*use a JOIN to display a table showing people's names with their hobbies.*/
SELECT Persons.fullname, Hobbies.name 
    FROM Persons
    JOIN Hobbies
    ON Persons.id = Hobbies.person_id;

/*use a JOIN to display a table showing people's names with their hobbies. Include all people*/
SELECT Persons.fullname, Hobbies.name 
    FROM Persons
    LEFT OUTER JOIN Hobbies
    ON Persons.id = Hobbies.person_id;

/*SELECT with a JOIN to show the names of each pair of friends, based on the data in the friends table*/
SELECT Persons.fullname, Persons2.fullname AS friend
    FROM Persons
    JOIN Friends
    ON Persons.id = Friends.person1_id
    JOIN Persons Persons2
    ON Persons2.id = Friends.person2_id;
