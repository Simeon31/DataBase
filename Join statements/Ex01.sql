USE soft_uni;

SELECT e.employee_id, e.job_title, e.address_id, a.address_text FROM employees AS e
JOIN addresses AS a ON a.address_id = e.employee_id ORDER BY e.address_id ASC LIMIT 5;