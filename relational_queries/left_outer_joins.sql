/*table for peeps*/
CREATE TABLE Students (id1 INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthdate TEXT);

INSERT INTO Students (first_name, last_name, email, phone, birthdate) VALUES ("Peter", "Rabbit", "peter@rabbit.com", "555-5555", "2000-01-01"); 
INSERT INTO Students (first_name, last_name, email, phone, birthdate) VALUES ("Alice", "Wonderland", "alice@wonderland.com", "555-6666", "2000-01-02");
INSERT INTO Students (first_name, last_name, email, phone, birthdate) VALUES ("Richard", "Anderson", "richarddeananderson@sg.com", "555-7777", "1960-01-03");

/*table for grades*/
CREATE TABLE Student_grades (id2 INTEGER PRIMARY KEY,
    student_id INTEGER,
    test TEXT,
    grade INTEGER);

INSERT INTO Student_grades (student_id, test, grade)
    VALUES (1, "Nutrition", 92);
INSERT INTO Student_grades (student_id, test, grade)
    VALUES (2, "Nutrition", 95);
INSERT INTO Student_grades (student_id, test, grade)
    VALUES (1, "Chemistry", 95);
INSERT INTO Student_grades (student_id, test, grade)
    VALUES (2, "Chemistry", 85);

/*projects students are working on*/
CREATE TABLE Student_projects (id3 INTEGER PRIMARY KEY, student_id INTEGER, title TEXT);

/*insert projects*/
INSERT INTO Student_projects (student_id, title) VALUES (1, "Underground Navigation system");
INSERT INTO Student_projects (student_id, title) VALUES (2, "Always teleport home transponder");

/*get student names and project they are working on*/
/*inner join */
SELECT Students.first_name, Students.last_name, Student_projects.title FROM Students
    JOIN Student_projects
    ON Students.id1 = Student_projects.student_id;
/*notice Richard is missing*/
/**only creates rows in putput if there are matching rows in both joined tables*/
/*richard is in Students, but not in Student_projects*/
/*This makes sense most of the time, but now I want all students even slackers to show up*/
/*outer join*/

/*left outer join*/
SELECT Students.first_name, Students.last_name, Student_projects.title FROM Students
    LEFT OUTER JOIN Student_projects
    ON Students.id1 = Student_projects.student_id;
/*tell sql to retain all rows from left table which is after FROM .. the Students table*/
/*  FROM Stundents LEFT OUTER JOIN Stundent_projects*/
/*so you see Students is on the left of the join  and OUTER tells it to retain even if no match on right (Stundent_projects*/

/*right outer join; looks the same but flips it.  Not support interactive environment I am using*/
SELECT Students.first_name, Students.last_name, Student_projects.title FROM Students
    RIGHT OUTER JOIN Student_projects
    ON Students.id1 = Student_projects.student_id;

/*FUll outer join keeps rows from both sides and display NULL where empty. Also not supported here*/
SELECT Students.first_name, Students.last_name, Student_projects.title FROM Students
    FULL OUTER JOIN Student_projects
    ON Students.id1 = Student_projects.student_id;