-- 1. List for each emp: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name,e.first_name,e.sex, s.salary
From employees AS e LEFT JOIN salaries AS s ON e.emp_no = s.emp_no;
	

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date FROM employees AS e WHERE hire_date>'12/31/1985' AND hire_date<'01/01/1987';


-- 3. List the manager of each department w/: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name,	dm.emp_no, e.last_name, e.first_name
	FROM dept_manager AS dm FULL JOIN departments AS d ON dm.dept_no = d.dept_no
	LEFT JOIN employees AS e ON dm.emp_no=e.emp_no;
	
	
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name,e.first_name,d.dept_name
FROM employees AS e RIGHT JOIN dept_emp AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no;


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM employees as e
WHERE first_name='Hercules' AND last_name LIKE 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e LEFT JOIN dept_emp as de ON e.emp_no=de.emp_no
FULL JOIN departments AS d ON de.dept_no = d.dept_no WHERE d.dept_name='Sales';


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e RIGHT JOIN dept_emp AS de ON e.emp_no = de.emp_no 
RIGHT JOIN departments AS d ON de.dept_no = d.dept_no 
WHERE d.dept_name in ('Sales','Development');


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT (last_name) AS freq
FROM employees AS e
GROUP BY e.last_name
ORDER BY freq DESC
