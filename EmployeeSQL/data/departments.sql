-- 3rd Table: departments

-- DROP TABLE IF EXISTS departments;

CREATE TABLE departments
(
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
	);

-- Then import data from departments.csv by right-clicking the table and using import/export tool.  