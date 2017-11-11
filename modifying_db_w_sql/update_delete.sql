/*diary app*/
CREATE TABLE Users (
    id INTEGER PRIMARY KEY,
    name TEXT);
    
CREATE TABLE Diary_logs (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    content TEXT
    );

/* After user submitted their new diary log */
INSERT INTO Diary_logs (user_id, date, content) VALUES (1, "2013-12-11",
    "I meet a guy named OhNoesGuy.  He loves to eat his weight in chocolate.");
    
INSERT INTO Diary_logs (user_id, date, content) VALUES (1, "2013-12-11",
    "OhNoesGuy taught me how to make a mean sundae with lots of chocolate.");

INSERT INTO Diary_logs (user_id, date, content) VALUES (1, "2013-12-12",
    "OhNoesGuy and I went out for some drinks with the crew.  Then we all went to watch a Warriors game.");

/*check out logs so far*/    
SELECT * FROM Diary_logs; 

/*maybe you forgot some details and need to append to a log*/
/*how do you pick a row? maybe you know values in some columns
UPDATE Diary_logs SET content = "OhNoesGuy taught me how to make a mean sundae with lots of chocolate. His girlfriend was kind enough to let ups borrow the supplies"
	WHERE user_id = 1 AND date = "2013-12-11"/
*/

/*maybe you happen to know row id; which is ideal compare to above as that user had 2 entries for that date*/
UPDATE Diary_logs SET content = "OhNoesGuy taught me how to make a mean sundae with lots of chocolate. His girlfriend was kind enough to let ups borrow the supplies."
	WHERE id = 2;

/*check out logs after UPDATE command*/    
SELECT * FROM Diary_logs; 

/*user wants to delete a log entry. Ohnoesguy gf's didn't know he went to a BB game*/
DELETE FROM Diary_logs WHERE id = 2;

/*check out logs after UPDATE command*/    
SELECT * FROM Diary_logs;

/*some apps don't actually delete data. May have extra column isDeleted and when you go to delete value in that row to true.
Then in your queries filters get added to search isDeleted NOT true
*/

/*delete row where title is Jet supplies */
DELETE FROM Documents WHERE title = "Jet Supplies";

/*check to see if it worked*/
SELECT * FROM Documents;