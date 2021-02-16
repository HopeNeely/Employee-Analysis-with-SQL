-- Third table: salaries

DROP TABLE IF EXISTS salaries

CREATE TABLE salaries
(
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
	PRIMARY KEY emp_no
	FOREIGN KEY emp_no REFERENCES dept_emp(emp_no)
	FOREIGN KEY emp_no REFERENCES employees(emp_no)
);

-- Then import data from salaries.csv by right-clicking the table and using import/export tool.  