SELECT
	start_station
	, COUNT (*)
	
FROM 
	trips
	
GROUP BY 
	start_station
	
ORDER BY
	start_station