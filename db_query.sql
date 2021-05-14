-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT  e.emp_no,
		e.last_name,
		e.first_name,
		e.sex,
		s.salary
FROM salary AS s
INNER JOIN employee as e
	ON s.emp_no = e.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT  first_name,
		last_name,
		hire_date
FROM employee
WHERE hire_date >= '19860101' AND hire_date <= '19861231';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT  dm.dept_no,
		d.dept_name,
		e.emp_no,
		e.last_name,
		e.first_name
FROM department AS d
INNER JOIN dept_manager AS dm
	ON dm.dept_no = d.dept_no
INNER JOIN employee AS e
	ON dm.emp_no = e.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT  e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM department AS d
INNER JOIN dept_emp AS de
	ON de.dept_no = d.dept_no
INNER JOIN employee AS e
	ON de.emp_no = e.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT  first_name,
		last_name,
		sex
FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT  e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM department AS d
INNER JOIN dept_emp AS de
	ON de.dept_no = d.dept_no
INNER JOIN employee AS e
	ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT  e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM department AS d
INNER JOIN dept_emp AS de
	ON de.dept_no = d.dept_no
INNER JOIN employee AS e
	ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT  last_name,
		COUNT(last_name)
FROM employee
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;