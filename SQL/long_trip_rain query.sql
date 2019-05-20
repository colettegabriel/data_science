SELECT
	 MAX(trips.duration) AS max_trip_time
	 , DATE(trips.end_date)
	
FROM trips

JOIN weather ON
	DATE(weather.date) = DATE(trips.end_date)

WHERE weather.events = 'Rain'

GROUP BY 2

ORDER BY 1 DESC