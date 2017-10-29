CREATE TABLE Exercise_logs
	(id INTEGER PRIMARY KEY AUTOINCREMENT,
		type TEXT,
		minutes INTEGER,
		calories INTEGER,
		heart_rate INTEGER);

/** drop some pretend data because you know you don't do cool stuff like wrestle bears**/
/**what do I do if I forget order? **/
/**specify columns first then pass values**/
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("biking", 10, 35, 110);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 105);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("mountain climbers", 10, 150, 170);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("mountain climbers", 5, 75, 165);
INSERT INTO Exercise_logs (type, minutes, heart_rate, calories) VALUES ("rowing", 30, 135, 120);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("swimming", 20, 100, 145);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("treadmill", 60, 600, 150);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("treadmill", 30, 300, 150);

/**check it out **/
SELECT * FROM Exercise_logs;

/**find biking stats**/
SELECT * FROM Exercise_logs WHERE type = "biking";

/**find outdoor stuff**/
SELECT * FROM Exercise_logs WHERE type = "biking" OR type = "rowing" OR type = "swimming";