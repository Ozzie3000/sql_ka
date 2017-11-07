CREATE TABLE Students (id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthdate TEXT,
    buddy_id INTEGER);

INSERT INTO Students 
    VALUES (1, "Rurouni", "Kenshin", "rkenshin@batousai", "555-1111", "2000-01-01", 2);
INSERT INTO Students 
    VALUES (2, "Sagara" "Sanosuke", "ssanosuke@fledgling.com", "555-2222", "2007-07-04", 1);
INSERT INTO Students 
    VALUES (3, "Naruto", "Uzumaki", "nuzumaki@hiddenleaf.com", "555-3333", "2001-05-10", 4);
INSERT INTO Students 
    VALUES (4, "Sasuke", "Uchiha", "suchiha@hiddenleaf.com", "555-4444", "2001-12-24", 3);