USE codeup_test_db;

SELECT  * FROM  albums;

SELECT name, artist FROM  albums where artist = 'Pink Floyd';
SELECT release_date, name FROM  albums where name = 'Sgt. Peppers Lonely Hearts Club Band';
SELECT genre, name FROM  albums where name = 'Nevermind';
SELECT release_date, name FROM  albums where release_date BETWEEN 1990 AND 1999;
SELECT artist, name, sales FROM  albums where sales < 20;
SELECT * FROM  albums where genre =  'Rock';




SELECT  * FROM  albums;

SELECT  * FROM  albums where release_date < 1980;

SELECT  * FROM  albums where artist = 'Michael Jackson';

UPDATE albums
SET sales = sales*10
WHERE sales = sales;

UPDATE albums
SET release_date = 1800
WHERE release_date<1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';



SELECT  * FROM  albums;

