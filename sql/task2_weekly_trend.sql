SELECT
    WEEK(shipment_date) AS week_number,
    ROUND(AVG(actual_volume / forecasted_volume), 2) AS avg_fill_rate,
    ROUND(AVG(actual_volume / forecasted_volume) - 
        (SELECT AVG(actual_volume / forecasted_volume) 
         FROM shipments WHERE route_id = 'RT001'), 2) AS deviation_from_baseline
FROM shipments
WHERE route_id = 'RT001'
GROUP BY WEEK(shipment_date)
ORDER BY week_number;
