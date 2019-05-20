SELECT
	  stat.station_id
	, stat.name
	, stat.dockcount
	, COUNT (trips.trip_id)

FROM trips
JOIN stations AS stat
  ON stat.name = trips.start_station

GROUP BY 1, 2, 3

ORDER BY stat.dockcount