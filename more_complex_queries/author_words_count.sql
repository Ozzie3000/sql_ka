CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author TEXT,
    title TEXT,
    words INTEGER);
    
INSERT INTO books (author, title, words)
    VALUES ("Peter F Hamilton", "The Reality Dysfunction", 385000);
INSERT INTO books (author, title, words)
    VALUES ("Peter F Hamilton", "THe Neutronium Alchemist", 393000);
INSERT INTO books (author, title, words)
    VALUES ("Peter F Hamilton", "The Naked God", 469000);


INSERT INTO books (author, title, words)
    VALUES ("George R R Martin", "A Game of Thrones", 298000);
INSERT INTO books (author, title, words)
    VALUES ("George R R Martin", "A Clash of Kings ", 326000);
INSERT INTO books (author, title, words)
    VALUES ("George R R Martin", "A Storm of Swords", 424000);
INSERT INTO books (author, title, words)
    VALUES ("George R R Martin", "A Feast of Crows", 300000);
INSERT INTO books (author, title, words)
    VALUES ("George R R Martin", "A Dance with Dragons", 422000);
    
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "The Hobbit", 95022);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Fellowship of the Ring", 177227);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Two Towers", 143436);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Return of the King", 134462);

/**group by authors, show word count, make new column for total words, show only 1Million or more**/
SELECT author, SUM(words) AS total_words FROM books
    GROUP BY author
    HAVING total_words > 999999;

/**group by authors and show written 150k or more avg**/
SELECT author, AVG(words) AS avg_words FROM books
    GROUP BY author
    HAVING avg_words >= 150000;