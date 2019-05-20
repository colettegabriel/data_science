SELECT
	stat.station_id
	, COUNT(CASE WHEN stat.docks_available = 0 THEN 'full' END) AS empty_docks
	, stations.name
	
FROM status AS stat

INNER JOIN stations
ON stations.station_id = stat.station_id

GROUP BY 1, 3

ORDER BY empty_docks DESC