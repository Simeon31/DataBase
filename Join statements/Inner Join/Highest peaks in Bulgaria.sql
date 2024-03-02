USE geography;

SELECT c.country_code, m.mountain_range, p.peak_name, p.elevation FROM countries AS c
JOIN mountains_countries AS mc ON c.country_code = mc.country_code 
JOIN mountains AS m ON m.id = mc.mountain_id
JOIN peaks AS p On mc.mountain_id = p.mountain_id WHERE p.elevation > 2835 AND mc.country_code = "BG"
ORDER BY p.elevation DESC

 