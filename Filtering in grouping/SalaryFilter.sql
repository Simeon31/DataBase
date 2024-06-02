USE company;

SELECT e.job_title, SUM(e.salary) AS 'total_sum' FROM employees AS e
GROUP BY e.job_title HAVING total_sum > 5000
ORDER BY SUM(e.salary)