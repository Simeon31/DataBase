USE geography;

SELECT country_name FROM countries WHERE country_code NOT IN (SELECT DISTINCT mountain_id FROM mountains_countries WHERE mountain_id IN(0))