USE codeup_test_db;

DROP TABLE IF EXISTS quotes;


CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        author_first_name VARCHAR(50),
                        author_last_name  VARCHAR(100) NOT NULL,
                        content TEXT NOT NULL,
                        PRIMARY KEY (id)
);

DESCRIBE quotes;
INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Songju', 'Oh','Do your best!!');

SELECT * FROM quotes;

SHOW TABLES;

SELECT id, name, artist FROM albums
WHERE



# CREATE TABLE contacts (
#                           id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                           artist VARCHAR(100) NOT NULL,
#                           name VARCHAR(100) NOT NULL,
#                           release_date DATE,
#                           sales DECIMAL(50,2),
#                           genre VARCHAR(100) NOT NULL,
#                           PRIMARY KEY (id)
# );

-- CREATE TABLE contacts (
--                           id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--                           name VARCHAR(100) NOT NULL,
--                           phone_number VARCHAR(46),
--                           created_at DATE,
--                           age TINYINT,
--                           PRIMARY KEY (id)
-- );