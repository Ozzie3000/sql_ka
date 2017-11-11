CREATE table Documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);
    
INSERT INTO Documents (author, title, content)
    VALUES ("Johnny Jo Jackson", "World Wide", "Traveling like a boss.");
INSERT INTO Documents (author, title, content)
    VALUES ("Johnny Jo Jackson", "Living Things", "Is this thing real?");
INSERT INTO Documents (author, title, content)
    VALUES ("Jack the Lipper", "Space Pirate Recipes", "Meat pie, rhubarb pie, blueberry pie.");
INSERT INTO Documents (author, title, content)
    VALUES ("Jack the Lipper", "Jet Supplies", "You don't want to miss any items from the list.");
INSERT INTO Documents (author, title, content)
    VALUES ("Jack the Lipper", "Things I'm Afraid Of", "Cosmological constant problem, Quantum Zeno effect, Infinite loops.");

SELECT * FROM Documents;