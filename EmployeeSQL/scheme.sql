
CREATE TABLE IF NOT EXISTS employees (
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

CREATE TABLE IF NOT EXISTS dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	from_date VARCHAR(30) NOT NULL,
	to_date VARCHAR (30) NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE IF NOT EXISTS titles (
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

copy departments(dept_no, dept_name) from 'data/departments.csv' csv delimiter ',' header;
copy employees(emp_no, birth_date, first_name, last_name, gender, hire_date) from 'data/employees.csv' csv delimiter ',' header;
copy salaries(emp_no, salary, from_date, to_date) from 'data/salaries.csv' csv delimiter ',' header;
copy titles(emp_no, title, from_date, to_date) from 'data/titles.csv' csv delimiter ',' header;
copy dept_emp(emp_no, dept_no, from_date, to_date) from 'data/dept_emp.csv' csv delimiter ',' header;
copy dept_manager(dept_no, emp_no, from_date, to_date) from 'data/dept_manager.csv' csv delimiter ',' header;
