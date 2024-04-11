USE company;

SELECT d.name AS 'deposit_group', MIN(d.department_id) AS 'smallest_magical_wand' FROM departments AS d
GROUP BY d.name
LIMIT 1