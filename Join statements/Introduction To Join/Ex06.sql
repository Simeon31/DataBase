USE soft_uni;

SELECT min_salary.salary, d.name FROM
(
SELECT e.salary, e.department_id FROM employees AS e
ORDER BY e.salary LIMIT 1
) AS min_salary
JOIN departments AS d ON d.department_id = min_salary.department_id