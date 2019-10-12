--1
/*
SELECT employee.emp_no, employee.last_name, employee.first_name, employee.gender, saleries.salary
FROM employee
RIGHT JOIN saleries ON employee.emp_no = saleries.emp_no
*/
/*
--7. List all employees in the Sales and Development departments,  employee number, last name, first name, and department name.
SELECT employee.emp_no, employee.last_name, employee.first_name, dept_emp.dept_no
FROM employee
RIGHT JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
*/
--8
/*
SELECT last_name, COUNT(last_name)AS Frequency
	FROM employee
	GROUP BY last_name
	ORDER BY
	COUNT(last_name) DESC;
*/