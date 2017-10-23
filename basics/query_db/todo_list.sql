/** a to do list.  **/
CREATE TABLE Todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO Todo_list VALUES (1, "Empty dishwasher", 5);
INSERT INTO Todo_list VALUES (2, "vacuuming", 40);
INSERT INTO Todo_list VALUES (3, "Learn some stuff on computer science", 60);

/**pick something fun and insert it into table**/
INSERT INTO Todo_list VALUES (4, "Look for Droids", 360); 

/**car chores**/
INSERT INTO Todo_list VALUES (5, "Work on car", 240);

/**find total time of all activities**/
SELECT SUM(minutes) FROM Todo_list; 

/**give the result aka column a new name**/
SELECT SUM(minutes) AS total_min_spent FROM Todo_list; 