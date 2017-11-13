/* What does the app's SQL look like? */
/*create table*/
CREATE TABLE tekken_scores(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    score INTEGER,
    date TEXT);

/*insert data*/
INSERT INTO tekken_scores (username, score, date) VALUES (MADMAX, 751300, "1984-10-27");


/*checker*/
SELECT * FROM tekken_scores;