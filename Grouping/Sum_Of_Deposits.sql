USE company;

SELECT e.job_title, SUM(e.salary) AS 'total_sum' FROM employees AS e
GROUP BY e.job_title
ORDER BY SUM(e.salary)