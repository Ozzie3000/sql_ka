CREATE TABLE Users (
    id INTEGER PRIMARY KEY,
    name TEXT);
    
CREATE TABLE Diary_logs (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    content TEXT
    );