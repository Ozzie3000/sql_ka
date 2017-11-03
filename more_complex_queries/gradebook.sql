/** grade book project.  fraction means fraction of activities completed**/
CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);
    
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Stark", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Targaryen", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Martell", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Baratheon", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Tyrell", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Tully", 82, 0.9045);

/**  select all of the rows, and display the name, number_grade, and percent_completed, which you can compute by multiplying and rounding the fraction_completed column.  (by 100 to get percent)**/    
SELECT name, number_grade, ROUND(fraction_completed * 100) AS percent_completed FROM student_grades;

/** a table that shows how many students have earned which letter_grade. You can output the letter_grade 
by using CASE with the number_grade column, outputting 'A' for grades > 90, 'B' for grades > 80, 
'C' for grades > 70, and 'F' otherwise. Then you can use COUNT with GROUP BY to show the number of 
students with each of those grades**/

SELECT number_grade,
    CASE
        WHEN number_grade > 90 THEN "A"
        WHEN number_grade > 80 THEN "B"
        WHEN number_grade > 70 THEN "C"
        ELSE "F"
    END as "letter_grade"
FROM student_grades
GROUP BY letter_grade;