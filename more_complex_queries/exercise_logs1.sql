CREATE TABLE Exercise_logs
	(id INTEGER PRIMARY KEY AUTOINCREMENT,
		type TEXT,
		minutes INTEGER,
		calories INTEGER,
		heart_rate INTEGER);

/** drop some pretend data because you know you don't do cool stuff like wrestle bears**/
/**what do I do if I forget order? **/
/**specify columns first**/
/**then pass values**/
INSERT INTO Exercise_logs (type, minutes, heart_rate, calories) VALUES ("rowing", 30, 135, 120);
/**switching it up**/
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("treadmill", 60, 600, 150);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("swimming", 20, 100, 145);
INSERT INTO Exercise_logs (type, minutes, calories, heart_rate) VALUES ("mountain climbers", 10, 150, 170);

SELECT * FROM Exercise_logs;
/**Notice id was auto incremented and we did not specify it when inserting values by ommitting it**/

/**lets fine out where most cals are burnt**/
SELECT * FROM Exercise_logs ORDER BY calories DESC;
/** highest cal count should be first row**/

/**filter down to combine conditions**/
/**rows were calories greater than 50 and minutes less than 30**/
SELECT * FROM Exercise_logs WHERE calories > 50 AND minutes < 30;

/**use OR to return many conditions**/
SELECT * FROM Exercise_logs WHERE calories > 150 OR heart_rate > 150;

/**remember order of operations if you want to use multiple operators**/