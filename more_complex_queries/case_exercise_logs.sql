/**exercise logs 4**/
CREATE TABLE Exercise_logs
	(id INTEGER PRIMARY KEY AUTOINCREMENT,
		type TEXT,
		minutes INTEGER,
		calories INTEGER,
		heart_rate INTEGER);

INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("biking", 10, 35, 110);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("biking", 20, 75, 110);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 105);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("mountain climbers", 10, 150, 170);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("mountain climbers", 5, 75, 165);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("mountain climbers", 6, 76, 165);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("rowing", 15, 67, 120);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("rowing", 30, 135, 120);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("swimming", 20, 100, 145);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("swimming", 10, 50, 145);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("treadmill", 60, 600, 150);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("treadmill", 30, 300, 150);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("treadmill", 45, 150, 150);

/**what do we have?**/
SELECT * FROM Exercise_logs;

/** 220 - age; max heart rate or so they say**/
/**did we go over?**/
SELECT COUNT(*) FROM Exercise_logs WHERE heart_rate >= 220 - 20;