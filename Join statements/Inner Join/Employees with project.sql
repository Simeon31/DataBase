SELECT e.employee_id, e.first_name, p.name AS project_name FROM employees AS e
INNER JOIN employees_projects AS ep ON e.employee_id = ep.employee_id
INNER JOIN projects AS p ON p.project_id = ep.project_id WHERE e.employee_id IS NOT NULL AND p.start_date > 20020813
ORDER BY e.first_name ASC, p.name ASC LIMIT 5