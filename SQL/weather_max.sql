SELECT
	zip
	, MAX(maxtemperaturef) AS max_temp_F
	
FROM
	weather
	
GROUP BY zip