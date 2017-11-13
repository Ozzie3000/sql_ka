/* What does the app's SQL look like? */
/*create table*/
CREATE TABLE tekken_scores(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    score INTEGER,
    date TEXT);

/*insert data*/
INSERT INTO tekken_scores (username, score, date) VALUES ("MADMAX", 751300, "1984-10-27");
INSERT INTO tekken_scores (username, score, date) VALUES ("DUSTIN", 650990, "1984-06-12");
INSERT INTO tekken_scores (username, score, date) VALUES ("LUCAS", 641183, "1983-12-29");
INSERT INTO tekken_scores (username, score, date) VALUES ("WIZARD", 620784, "1984-02-17");
INSERT INTO tekken_scores (username, score, date) VALUES ("HBIATC", 552415, "1984-09-07");

/*UPDATE to emulate what happens when you edit data in the app.*/
UPDATE tekken_scores SET username = "PRESTON", score = 555942, date = "1984-09-27" WHERE id = 5;


/*checker*/
SELECT * FROM tekken_scores;