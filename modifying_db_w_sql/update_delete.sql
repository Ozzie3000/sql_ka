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
