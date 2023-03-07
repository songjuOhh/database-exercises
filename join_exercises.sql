USE employees;

SELECT * FROM dept_manager;

SELECT * FROM dept_emp;

SELECT * FROM departments;

SELECT * FROM titles;

SELECT * FROM salaries;

SELECT * FROM employees;

SELECT d.dept_name AS 'Department Name', CONCAT( e.first_name,' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm on e.emp_no = dm.emp_no #join employees table by connecting employee number from salaries & employees
JOIN departments AS d on dm.dept_no = d.dept_no  #Show me three different columns from salaries table
WHERE to_date = '9999-01-01'
ORDER BY d.dept_name, e.first_name DESC;


SELECT d.dept_name AS 'Department Name', CONCAT( e.first_name,' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm on e.emp_no = dm.emp_no #join employees table by connecting employee number from salaries & employees
JOIN departments AS d on dm.dept_no = d.dept_no  #Show me three different columns from salaries table
WHERE to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name, e.first_name DESC;


SELECT t.title AS title, COUNT(t.title) AS Total
FROM titles AS t
         JOIN dept_emp AS de on t.emp_no = de.emp_no
         JOIN departments AS d on de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND t.to_date = '9999-01-01'
GROUP BY t.title
ORDER BY COUNT(t.title) DESC ;


SELECT d.dept_name AS 'Department Name', CONCAT( e.first_name,' ', e.last_name) AS 'Department Manager', s.salary AS Salary
FROM employees AS e
         JOIN dept_manager AS dm on e.emp_no = dm.emp_no #join employees table by connecting employee number from salaries & employees
         JOIN departments AS d on dm.dept_no = d.dept_no  #Show me three different columns from salaries table
        JOIN salaries AS s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;


SELECT CONCAT( e.first_name,' ', e.last_name) AS Employee , d.dept_name AS 'Department', CONCAT( em.first_name,' ', em.last_name) AS Manager
FROM employees AS e
        JOIN dept_emp AS de on e.emp_no = de.emp_no
        JOIN departments AS d on de.dept_no = d.dept_no
        JOIN dept_manager AS dm on d.dept_no = dm.dept_no
        LEFT JOIN employees AS em on dm.emp_no = em.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name, dm.emp_no, e.emp_no;

#10038,1960-07-20,Huan,Lortz,M,1989-09-20
#10049,1961-04-24,Basil,Tramer,F,1992-05-04
#10060,1961-10-15,Breannda,Billingsley,M,1987-11-02
#10088,1954-02-25,Jungsoon,Syrzycki,F,1988-09-02





