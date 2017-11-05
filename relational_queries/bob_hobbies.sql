CREATE TABLE Persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);
    
INSERT INTO persons (name, age) VALUES ("Hugo Richard", 23);
INSERT INTO persons (name, age) VALUES ("Judy Garland", 25);
INSERT INTO persons (name, age) VALUES ("Fred  Astaire", 44);
INSERT INTO persons (name, age) VALUES ("Ginger Rogers", 20);
INSERT INTO persons (name, age) VALUES ("Johnny JoJackson", 38);
INSERT INTO persons (name, age) VALUES ("Bob UpnDown", 23);


CREATE table Hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "singing");
INSERT INTO hobbies (person_id, name) VALUES (3, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (3, "singing");
INSERT INTO hobbies (person_id, name) VALUES (3, "acting");
INSERT INTO hobbies (person_id, name) VALUES (4, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (5, "hidding");
INSERT INTO hobbies (person_id, name) VALUES (6, "not sinking");
