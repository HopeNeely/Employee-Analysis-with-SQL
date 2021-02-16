-- 6th Table: dept_emp

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp
(
    emp_no INTEGER,
    dept_no VARCHAR(30)
);

-- Then import data from dept_emp.csv by right-clicking the table and using import/export tool.  

ALTER TABLE dept_emp ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE dept_emp
	ADD CONSTRAINT add_fk
	FOREIGN KEY (emp_no) 
	REFERENCES salaries(emp_no);

SELECT * FROM dept_emp;