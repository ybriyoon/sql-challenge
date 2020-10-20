DROP TABLE departments
CREATE TABLE departments (dept_no VARCHAR(50),dept_name VARCHAR(50),PRIMARY KEY(dept_no));
SELECT * from departments

DROP TABLE employees
CREATE TABLE employees (emp_no INT,emp_title VARCHAR(50),birth_date DATE,first_name VARCHAR(50),last_name VARCHAR(50),sex VARCHAR(50),hire_date DATE,PRIMARY KEY(emp_no));
SELECT * from employees

DROP TABLE dept_emp
CREATE TABLE dept_emp (emp_no INT,dept_no VARCHAR(50),
					   FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
					   FOREIGN KEY(emp_no) REFERENCES employees(emp_no));
SELECT * from dept_emp

DROP TABLE dept_manager
CREATE TABLE dept_manager (dept_no VARCHAR(50),emp_no INT,
						  FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
						  FOREIGN KEY(emp_no) REFERENCES employees(emp_no));
SELECT * from dept_manager

DROP TABLE salaries
CREATE TABLE salaries (emp_no INT,salary INT,
					  FOREIGN KEY(emp_no) REFERENCES employees(emp_no));
SELECT * from salaries

DROP TABLE titles
CREATE TABLE titles (title_id VARCHAR(50),title VARCHAR(50));
SELECT * from titles

