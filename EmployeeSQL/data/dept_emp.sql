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

-- Then import data from dept_emp.csv by right-clicking the table and using import/export tool.  
