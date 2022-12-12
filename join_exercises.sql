USE employees;

SELECT d.dept_name
    AS Department_Name,
    CONCAT(e.first_name, ' ', e.last_name)
    AS Department_Manager
FROM employees as e
    JOIN dept_manager as de
        ON de.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = de.dept_no;

SELECT d.dept_name
    AS Department_Name,
    CONCAT(e.first_name, ' ', e.last_name)
    AS Department_Manager
FROM employees as e
    JOIN dept_manager as de
        ON de.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = de.dept_no
WHERE e.gender = 'F';

SELECT t.title AS Title,
    COUNT(de.emp_no) AS Total
FROM titles as t
    JOIN dept_emp as de
        ON de.emp_no = t.emp_no
    JOIN departments as dp
        ON dp.dept_no = de.dept_no
WHERE de.dept_no = 'd009'
    GROUP BY title;

SELECT d.dept_name
    AS Department_Name,
    CONCAT(e.first_name, ' ', e.last_name)
    AS Department_Manager,
    s.salary
    AS Salary
FROM employees as e
    JOIN dept_manager as de
        ON de.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = de.dept_no
    LEFT JOIN salaries as s
        ON s.emp_no = e.emp_no
WHERE year(s.to_date) = 9999;


