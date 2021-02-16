-- Second Table: dept_emp

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp
(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no)
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Then import data from dept_emp.csv by right-clicking the table and using import/export tool.  