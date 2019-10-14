/*
CREATE TABLE IF NOT EXISTS employee (
    emp_no INTEGER NOT NULL PRIMARY KEY,
    birth_date VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date VARCHAR (30) NOT NULL
);

CREATE TABLE IF NOT EXISTS departments (
    dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);


CREATE TABLE IF NOT EXISTS dept_emp (
    emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date VARCHAR(30) NOT NULL,
	to_date VARCHAR (30) NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE IF NOT EXISTS dept_mana (
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	from_date VARCHAR(30) NOT NULL,
	to_date VARCHAR (30) NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE IF NOT EXISTS title (
    emp_no INTEGER NOT NULL,
	title VARCHAR (30) NOT NULL,
	from_date VARCHAR(10) NOT NULL,
	to_date VARCHAR (10) NOT NULL
);

CREATE TABLE IF NOT EXISTS saleries (
    emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	salery VARCHAR (30) NOT NULL,
	from_date VARCHAR(10) NOT NULL,
	to_date VARCHAR (10) NOT NULL,
	PRIMARY KEY (emp_no)
);


SELECT employee.emp_no, employee.last_name, employee.first_name, employee.gender, saleries.salary
FROM employee
RIGHT JOIN saleries ON employee.emp_no = saleries.emp_no
*/
