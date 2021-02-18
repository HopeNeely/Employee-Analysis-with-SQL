-- 1th Table: titles
-- DROP TABLE IF EXISTS titles;

CREATE TABLE titles
(
    title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id) 
);

-- Then import data from titles.csv by right-clicking the table and using import/export tool.  

-- 2nd Table: employees
-- DROP TABLE IF EXISTS employees;

CREATE TABLE employees
(
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(30) NOT NULL,
    birth_date date,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex VARCHAR(10),
    hire_date date,
	PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id) 
);

-- Import data from employees.csv by right-clicking the table and using import/export tool.  

-- 3rd Table: departments
-- DROP TABLE IF EXISTS departments;

CREATE TABLE departments
(
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
	);

-- Import data from departments.csv by right-clicking the table and using import/export tool.  

-- 4th Table: dept_manager
-- DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager
(
    dept_no VARCHAR(30) NOT NULL,
    emp_no INTEGER NOT NULL,
	PRIMARY KEY (emp_no), 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Import data from dept_manager.csv by right-clicking the table and using import/export tool.  

-- 5th Table: dept_emp
-- DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp
(
    emp_no INTEGER,
    dept_no VARCHAR(30),
	PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Import data from dept_emp.csv by right-clicking the table and using import/export tool.  

-- 6th table: salaries
-- DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries
(
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Import data from salaries.csv by right-clicking the table and using import/export tool.  