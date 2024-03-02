SELECT e.first_name, e.last_name, e.hire_date, d.name FROM employees AS e
JOIN departments AS d ON e.department_id = d.department_id WHERE e.hire_date > 19990101 AND d.department_id IN (10,3)
ORDER BY e.hire_date 