SELECT
	 AVG(list.price) AS ave_price
	, TO_CHAR(cal.calender_date, 'Mon') AS mon
	, EXTRACT (year from cal.calender_date) AS yyyy
	
FROM sfo_listings list

JOIN sfo_calendar cal
	ON cal.listing_id = list.id

GROUP BY 2,3

ORDER BY 1

