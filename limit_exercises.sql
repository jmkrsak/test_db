USE employees;

SELECT * FROM employees WHERE first_name IN (
    'Irena',
    'Vidya',
    'Maya'
    )
    ORDER BY last_name, first_name;

SELECT * FROM employees WHERE (
    first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'
    )
    AND gender = 'M';

SELECT * FROM employees
    WHERE last_name LIKE 'e%';

SELECT * FROM employees
    WHERE last_name LIKE '%e'
        OR last_name LIKE 'e%';

SELECT * FROM employees
    WHERE last_name LIKE '%e'
        AND last_name LIKE 'e%';

SELECT * FROM employees
    WHERE last_name LIKE '%e%'
        ORDER BY emp_no;

SELECT * FROM employees
    WHERE last_name LIKE '%e%'
        ORDER BY emp_no DESC;

SELECT * FROM employees
    WHERE last_name LIKE '%q%';

SELECT * FROM employees
    WHERE last_name LIKE '%q%'
        AND last_name NOT LIKE '%qu%';

SELECT DISTINCT last_name FROM employees
    ORDER BY last_name DESC
        LIMIT 10;

SELECT emp_no FROM salaries
    ORDER BY salary DESC
        LIMIT 5;

SELECT emp_no FROM salaries
    ORDER BY salary DESC
        LIMIT 5 OFFSET 45;