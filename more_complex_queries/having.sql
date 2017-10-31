/**exercise logs 3**/
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

/**lets have a look**/
SELECT * FROM Exercise_logs;

/**show total cals burnt doing everything**/
SELECT SUM (calories) FROM Exercise_logs;

/** how many cals for each activity**/
SELECT type, SUM (calories) FROM Exercise_logs GROUP BY type;

/** how many cals for each activity and rename your column of sum**/
SELECT type, SUM (calories) AS total_cals_burnt FROM Exercise_logs GROUP BY type;

/**burnt more than 150 cals total for any particular exercise**/
/**you may think WHERE but this filters a row at a time so i looks for one occurance of 150 instead of sum**/
SELECT type, SUM (calories) AS total_cals_burnt FROM Exercise_logs  WHERE calories > 150 GROUP BY type;

/**total cals burnt in each type group by type**/
SELECT type, SUM(calories) AS total_cals_burnt_all FROM Exercise_logs
GROUP BY type
HAVING total_cals_burnt_all > 150;
/**having applies condition to grouped values and not individual values in individual rows**/

/** avg calories for all exercies where we burnt more than x avg. group by type**/
SELECT type, AVG(calories) AS avg_cals FROM Exercise_logs
	GROUP BY type
	HAVING avg_cals > 70;

/**find where we logs 2 or more enteries for each type**/
SELECT type FROM Exercise_logs
	GROUP BY type
	HAVING COUNT(*) >=2;

/**find where we logs 2 or more enteries for each type**/
/**show count for each type**/
SELECT type, COUNT(type) AS two_more FROM Exercise_logs
	GROUP BY type
	HAVING two_more > 1;