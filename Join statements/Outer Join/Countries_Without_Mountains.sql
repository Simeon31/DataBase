USE geography;

SELECT c.country_name FROM countries AS c
LEFT OUTER JOIN mountains_countries AS mc ON c.country_code = mc.country_code
LEFT OUTER JOIN mountains AS m ON m.id =  mc.mountain_id WHERE mc.mountain_id IS NULL
