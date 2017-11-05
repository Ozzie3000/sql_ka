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

/*select everything student grades*/
SELECT * FROM student_grades;
/*notice student_id in student_grades table is a foreign key for a column in students table*/

/*output student name, email next to grade*/
/* simplest and least useful cross join*/
SELECT * FROM student_grades, students;
/*what it does here is 
grabs the first row and its four columns from the first table "student_grade" 
and joins to the right the first row from the 2nd table "students" with its five columns.
Then is grabs first row again from student_grades table 
and joins to the right the second row from the 2nd table "students" with its five columns.*/

/*inner join.  implicit*/
SELECT * FROM student_grades, students
	WHERE student_grades.student_id = students.id1;

/*lets be specific.  Explicit inner join*/
/*
SELECT * FROM table1
	JOIN table2
	ON table1.t1field = table2.t2field;  /*here t2field is a foreign key
	*/
SELECT * FROM students
	JOIN student_grades
	ON students.id1 = student_grades.student_id;