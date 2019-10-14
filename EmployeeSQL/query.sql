--1
/*
SELECT employee.emp_no, employee.last_name, employee.first_name, employee.gender, saleries.salary
FROM employee
RIGHT JOIN saleries ON employee.emp_no = saleries.emp_no

--2
SELECT * FROM
employee WHERE hire_date = '1983'
*/
/*
--3
SELECT employee.emp_no, employee.last_name, employee.first_name, employee.hire_date, title.title
FROM employee
INNER JOIN title ON employee.emp_no = title.emp_no
*/
/*
--4
SELECT employee.emp_no, employee.last_name, employee.first_name, employee.hire_date, title.title
FROM employee
RIGHT JOIN title ON employee.emp_no = title.emp_no

--5
SELECT *
FROM employee
WHERE first_name='Hercules';
*/
/*
--7. List all employees in the Sales and Development departments,  employee number, last name, first name, and department name.
SELECT employee.emp_no, employee.last_name, employee.first_name, title.title
FROM employee
RIGHT JOIN title ON employee.emp_no = title.emp_no
*/
--8
/*
SELECT last_name, COUNT(last_name)AS Frequency
	FROM employee
	GROUP BY last_name
	ORDER BY
	COUNT(last_name) DESC;


select * from employee
WHERE first_name='Hercules'

*/
