
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
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	title VARCHAR (30),
	from_date VARCHAR(10) NOT NULL,
	to_date VARCHAR (10) NOT NULL,
	--PRIMARY KEY (emp_no)
);

SELECT * FROM title