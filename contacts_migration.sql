USE codeup_test_db;

DROP TABLE contacts;

CREATE TABLE contacts (
                          id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                          artist VARCHAR(100) NOT NULL,
                          name VARCHAR(100) NOT NULL,
                          release_date DATE,
                          sales DECIMAL(50,2),
                          genre VARCHAR(100) NOT NULL,
                          PRIMARY KEY (id)
);

-- CREATE TABLE contacts (
--                           id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--                           name VARCHAR(100) NOT NULL,
--                           phone_number VARCHAR(46),
--                           created_at DATE,
--                           age TINYINT,
--                           PRIMARY KEY (id)
-- );