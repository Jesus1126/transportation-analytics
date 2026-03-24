SELECT 
    WEEK(shipment_date) AS week_number,
    ROUND(AVG(actual_volume / forecasted_volume), 2) AS avg_fill_rate
FROM shipments
WHERE route_id = 'RT001'
GROUP BY WEEK(shipment_date)
ORDER BY week_number;