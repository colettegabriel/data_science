WITH
	wet
AS (
	SELECT
		DATE(date) AS rainDate
FROM weather
WHERE events = 'Rain'
GROUP BY 1)

SELECT
	  wet.rainDate
	, trips.duration
	, trips.trip_id

FROM trips
JOIN wet
ON DATE(trips.end_date) = wet.rainDate

ORDER BY duration DESC

LIMIT 3