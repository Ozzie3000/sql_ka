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

/**use IN operator **/
SELECT * FROM Exercise_logs WHERE type IN ("biking", "rowing", "swimming");

/**use IN operator to find indoor**/
SELECT * FROM Exercise_logs WHERE type NOT IN ("biking", "rowing", "swimming");

/**lets add another table to make things interesting with IN **/
CREATE TABLE DR_orders
    (id INTEGER PRIMARY KEY,
    type TEXT,
    reason TEXT);

INSERT INTO DR_orders (type, reason) VALUES ("swimming", "Improves endurance and flexibility.");
INSERT INTO DR_orders (type, reason) VALUES ("biking", "Increases cardiovascular health.");

/**I want to see logs that correspond to doc recommendations**/
/**start by find what doc recommends first**/
/**should be swimming and hiking**/
SELECT type FROM DR_orders;

/**explicitly search for those types**/
SELECT * FROM Exercise_logs WHERE TYPE IN ("swimming", "biking");

/**what if rows change; let's make it dynamic**/
/**use IN operator directly on results of sql query**/
/**query and subquery**/
SELECT * FROM Exercise_logs WHERE type IN (
	SELECT type FROM DR_orders);

/**only favs select and reason is because cardiovascular**/
SELECT * FROM Exercise_logs WHERE type IN (
	SELECT type FROM DR_orders WHERE reason = "Increases cardiovascular health.");

/**the above too rigid what if other words are used later in conjunction with cardiovascular**/
SELECT * FROM Exercise_logs WHERE type IN (
	SELECT type FROM DR_orders WHERE reason LIKE "%cardiovascular%");