USE codeup_test_db;

DELETE FROM  albums where release_date > 1991;

DELETE FROM  albums where genre = 'Disco';

DELETE FROM  albums where artist = 'Whitney Houston';

SELECT * FROM  albums where artist LIKE '%whitney houston%';