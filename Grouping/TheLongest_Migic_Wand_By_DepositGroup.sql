USE company;

SELECT d.name AS 'deposit_group', MAX(d.manager_id) AS 'longest_magic_wand' FROM departments AS d
GROUP BY d.name
ORDER BY MAX(d.manager_id), d.name