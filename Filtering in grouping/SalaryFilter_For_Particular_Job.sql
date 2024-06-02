USE company;

SELECT e.job_title, SUM(e.salary) AS 'total_sum' FROM employees AS e
WHERE e.job_title = 'Design Engineer'
GROUP BY e.job_title HAVING total_sum > 15000
ORDER BY SUM(e.salary)