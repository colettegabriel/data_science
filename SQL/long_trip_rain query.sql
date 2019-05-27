WITH rainy AS (
	SELECT
		date
	FROM weather
	WHERE events = 'Rain'
	GROUP BY date)

SELECT
	DATE(trips.end_date)
	, MAX(trips.duration) AS max_trip_time

	
FROM rainy

JOIN trips 
ON DATE(rainy.date) = DATE(trips.end_date)

GROUP BY 1