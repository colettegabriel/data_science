SELECT
	end_station
	, AVG(duration)
	
FROM
	trips
	
GROUP BY 1

ORDER BY
	AVG(duration)