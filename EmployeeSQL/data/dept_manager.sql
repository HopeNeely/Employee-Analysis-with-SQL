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

-- Then import data from dept_manager.csv by right-clicking the table and using import/export tool.  