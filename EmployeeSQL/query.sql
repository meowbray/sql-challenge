--1
/*
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, saleries.salary
FROM employees
RIGHT JOIN saleries ON employees.emp_no = saleries.emp_no

--2
SELECT * FROM
employees WHERE hire_date = '1983'
*/
/*
--3
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.hire_date, titles.title
FROM employees
INNER JOIN titles ON employees.emp_no = titles.emp_no
*/
/*
--4
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.hire_date, titles.title
FROM employees
RIGHT JOIN titles ON employees.emp_no = titles.emp_no

--5
SELECT *
FROM employees
WHERE first_name='Hercules'
AND ;
*/
/*
--7. List all employees in the Sales and Development departments,  employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, titles.title
FROM employees
RIGHT JOIN titles ON employees.emp_no = titles.emp_no
*/
--8
/*
SELECT last_name, COUNT(last_name)AS Frequency
	FROM employees
	GROUP BY last_name
	ORDER BY
	COUNT(last_name) DESC;


select * from employees
WHERE first_name='Hercules'

*/
