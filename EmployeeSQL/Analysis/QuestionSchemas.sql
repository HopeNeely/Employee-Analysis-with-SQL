-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
  ON employees.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE to_char(hire_date, 'YYYY-MM-DD') LIKE '1986%'; 

-- 3. List the manager of each department with the following information: 
--         department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_manager
  ON dept_manager.emp_no = employees.emp_no
JOIN departments
  ON departments.dept_no = dept_manager.dept_no;

-- 4. List the department of each employee with the following information: 
--          employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_manager
  ON dept_manager.emp_no = employees.emp_no
JOIN departments
  ON departments.dept_no = dept_manager.dept_no
JOIN salaries
  ON employees.emp_no = salaries.emp_no
JOIN dept_emp
  ON salaries.emp_no = dept_emp.emp_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
