USE soft_uni;

SELECT e.employee_id, e.first_name FROM employees AS e
JOIN projects AS p ON e.employee_id = p.project_id WHERE p.project_id IS NOT NULL ORDER BY e.employee_id DESC LIMIT 3