/*table for peeps*/
CREATE TABLE students (id1 INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthdate TEXT);

INSERT INTO students (first_name, last_name, email, phone, birthdate) VALUES ("Peter", "Rabbit", "peter@rabbit.com", "555-5555", "2000-01-01"); 
INSERT INTO students (first_name, last_name, email, phone, birthdate) VALUES ("Alice", "Wonderland", "alice@wonderland.com", "555-6666", "2000-01-02");

/*table for grades*/
CREATE TABLE student_grades (id2 INTEGER PRIMARY KEY,
    student_id INTEGER,
    test TEXT,
    grade INTEGER);

INSERT INTO student_grades (student_id, test, grade)
    VALUES (1, "Nutrition", 92);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Nutrition", 95);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (1, "Chemistry", 95);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Chemistry", 85);

/*projects students are working on*/
CREATE TABLE Student_projects (id3 INTEGER PRIMARY KEY, student_id INTEGER, title TEXT);

/*insert projects*/
INSERT INTO Student_projects (student_id, title) VALUES (1, "Underground Navigation system");
INSERT INTO Student_projects (student_id, title) VALUES (2, "Always teleport home transponder");