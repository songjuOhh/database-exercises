USE employees;







SELECT CONCAT( first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE ('e%e');



SELECT CONCAT( first_name, ' ', last_name) ,birth_date AS born_in_Christmas
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;



SELECT CONCAT( first_name, ' ', last_name) AS born_in_90s_Christmas
FROM employees
WHERE year(hire_date) BETWEEN 1900 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;


SELECT CONCAT( first_name, ' ', last_name) AS born_in_90s_Christmas_hired_last
FROM employees
WHERE year(hire_date) BETWEEN 1900 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC, birth_date
LIMIT 10 OFFSET 0;



SELECT CONCAT('Mr. ',last_name,' worked for... ', ROUND((DATEDIFF( CURDATE(), hire_date ))/365), ' years, which is ', (DATEDIFF( CURDATE(), hire_date )), ' days.')
AS how_many_days_worked
FROM employees
WHERE year(hire_date) BETWEEN 1900 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY hire_date DESC, birth_date
LIMIT 1 OFFSET 0;






SELECT *
FROM employees;