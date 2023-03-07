USE employees;

SELECT DISTINCT title FROM titles;


SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE ('Z%')
ORDER BY last_name DESC
LIMIT 10 OFFSET 0;


SELECT emp_no
FROM salaries
WHERE salary
ORDER BY salary DESC
LIMIT 5 OFFSET 0;


SELECT emp_no
FROM salaries
WHERE salary
ORDER BY salary DESC
LIMIT 5 OFFSET 45;

# pageNo * Limit - limit = offset
# 10     * 5     - 5     = 45
