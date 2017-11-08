CREATE TABLE Students (id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthdate TEXT);

INSERT INTO Students (first_name, last_name, email, phone, birthdate)
    VALUES ("Peter", "Rabbit", "peter@rabbit.com", "555-6666", "2002-06-24");
INSERT INTO Students (first_name, last_name, email, phone, birthdate)
    VALUES ("Alice", "Wonderland", "alice@wonderland.com", "555-4444", "2002-07-04");
INSERT INTO Students (first_name, last_name, email, phone, birthdate)
    VALUES ("Aladdin", "Lampland", "aladdin@lampland.com", "555-3333", "2001-05-10");
INSERT INTO Students (first_name, last_name, email, phone, birthdate)
    VALUES ("Simba", "Kingston", "simba@kingston.com", "555-1111", "2001-12-24");
    
CREATE TABLE Student_projects (id INTEGER PRIMARY KEY,
    student_id INTEGER,
    title TEXT);
    
INSERT INTO Student_projects (student_id, title)
    VALUES (1, "Carrotapault");
INSERT INTO Student_projects (student_id, title)
    VALUES (2, "Mad Hattery");
INSERT INTO Student_projects (student_id, title)
    VALUES (3, "Carpet Physics");
INSERT INTO Student_projects (student_id, title)
    VALUES (4, "Hyena Habitats");
    
CREATE TABLE Project_pairs (id INTEGER PRIMARY KEY,
    project1_id INTEGER,
    project2_id INTEGER);

INSERT INTO Project_pairs (project1_id, project2_id)
    VALUES(1, 2);
INSERT INTO Project_pairs (project1_id, project2_id)
    VALUES(3, 4);

/*take a peak at project pairs*/
SELECT * FROM Project_pairs;

/*join project_pairs and student projects to see titles*/
SELECT * 
    FROM Project_pairs
    JOIN Student_projects;