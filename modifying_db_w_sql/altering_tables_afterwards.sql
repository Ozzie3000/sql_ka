/* What we used to originally create the table */
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT);
    
CREATE TABLE diary_logs (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    content TEXT
    );
    
/* After user submits a diary log */
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2010-11-12",
    "I ate so much ice cream I passed out");

/*create statement was ran months ago. Data gets wipped out if you re-run it. 
So what do we do if we want to update the rows?  Alter
ALTER TABLE tablename ADD columnname TYPE;
*/
ALTER TABLE diary_logs ADD emotion TEXT;


INSERT INTO diary_logs (user_id, date, content, emotion) VALUES (1, "2011-12-13", "I got to see an Orca today", "Excited");
SELECT * FROM diary_logs;

/*set default values you could have ran it like this instead*/
/* ALTER TABLE diary_logs ADD emotion TEXT default "unknown";

/*How to delete entire table*/
DROP TABLE diary_logs;
SELECT * FROM diary_logs;