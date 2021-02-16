-- 4th Table: employees

DROP TABLE IF EXISTS employees

CREATE TABLE employees
(
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(30) NOT NULL,
    birth_date date,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex character VARCHAR(10),
    hire_date date,
	PRIMARY KEY emp_no,
	FOREIGN KEY emp_no REFERENCES salaries(emp_no)
);

-- Then import data from salaries.csv by right-clicking the table and using import/export tool.  