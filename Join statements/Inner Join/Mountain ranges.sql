USE geography;

SELECT c.country_code, c.country_name, m.mountain_range FROM countries AS c
INNER JOIN mountains_countries AS mc ON c.country_code = mc.country_code
INNER JOIN mountains AS m ON m.id = mc.mountain_id WHERE mc.country_code = "BG" || mc.country_code = "RU" || mc.country_code = "US"
ORDER BY mc.country_code, m.mountain_range