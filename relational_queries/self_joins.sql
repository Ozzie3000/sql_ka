CREATE TABLE Students (id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthdate TEXT,
    buddy_id INTEGER);

INSERT INTO Students 
    VALUES (1, "Rurouni", "Kenshin", "rkenshin@batousai", "555-1111", "2000-01-01", 2);
INSERT INTO Students 
    VALUES (2, "Sagara" "Sanosuke", "ssanosuke@fledgling.com", "555-2222", "2007-07-04", 1);
INSERT INTO Students 
    VALUES (3, "Naruto", "Uzumaki", "nuzumaki@hiddenleaf.com", "555-3333", "2001-05-10", 4);
INSERT INTO Students 
    VALUES (4, "Sasuke", "Uchiha", "suchiha@hiddenleaf.com", "555-4444", "2001-12-24", 3);

/*normal select*/
SELECT Students.id, Students.first_name, Students.last_name, Students.buddy_id FROM Students;

/*name of each student and show buddies email from same table*/
SELECT Students.id, Students.first_name, Students.last_name, Students.buddy_id 
    FROM Students
    JOIN Students;
/*2 problems the select Students. could be either one; ambigous
and we should rename as alias to distinguish*/

/*also need an ON to match foreign key from students to Primary key on buddies table*/
SELECT Students.id, Students.first_name, Students.last_name, Buddies.email AS buddy_email
    FROM Students
    JOIN Students Buddies
    ON Students.buddy_id = Buddies.id;