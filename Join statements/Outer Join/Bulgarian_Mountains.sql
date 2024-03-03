USE geography;

SELECT m.mountain_range, p.peak_name, p.elevation FROM mountains AS m
LEFT OUTER JOIN mountains_countries AS mc ON mc.mountain_id = m.id
LEFT OUTER JOIN countries AS c ON c.country_code = mc.country_code
LEFT OUTER JOIN peaks AS p ON p.mountain_id = m.id WHERE c.country_code = "BG" AND (p.id IS NULL || p.id = (SELECT id FROM peaks WHERE mountain_id = m.id ORDER BY elevation DESC LIMIT 1))
ORDER BY p.elevation DESC 