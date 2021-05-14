-- 1. Create 6 Tables
-- Create title table (1)
CREATE TABLE titles (
	title_id VARCHAR(255) PRIMARY KEY,
	title VARCHAR(255)
);

-- Create employee table (2)
CREATE TABLE employee (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(255),
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create department table (3)
CREATE TABLE department (
	dept_no VARCHAR(255) PRIMARY KEY,
	dept_name VARCHAR(255)
);

-- Create dept_manager table (4)
CREATE TABLE dept_manager (
	dept_no VARCHAR(255),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

-- Create dept_emp table (5)
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(255),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

-- Create salary table (6)
CREATE TABLE salary (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

-- 2. Testing 6 tables
-- Testing title table (1)
SELECT *
FROM titles;

-- Testing employee table (2)
SELECT *
FROM employee;

-- Testing department table (3)
SELECT *
FROM department;

-- Testing dept_manager table (4)
SELECT *
FROM dept_manager;

-- Testing dept_emp table (5)
SELECT *
FROM dept_emp;

-- Testing salary table (6)
SELECT *
FROM salary;