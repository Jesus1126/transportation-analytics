-- Volume Forcast
SELECT
    WEEK(shipment_date) AS week_number,
    SUM(forecasted_volume) AS total_forecasted,
    SUM(actual_volume) AS total_actual,
    ROUND(SUM(actual_volume) / SUM(forecasted_volume), 2) AS fill_rate
FROM shipments
WHERE route_id = 'RT001'
GROUP BY WEEK(shipment_date)
ORDER BY week_number;

-- Missed Pickups
SELECT
    WEEK(s.shipment_date) AS week_number,
    COUNT(cp.pickup_id) AS total_pickups,
    SUM(cp.missed) AS missed_pickups,
    ROUND(SUM(cp.missed) / COUNT(cp.pickup_id), 2) AS missed_rate
FROM carrier_pickups cp
JOIN shipments s ON cp.shipment_id = s.shipment_id
WHERE s.route_id = 'RT001'
GROUP BY WEEK(s.shipment_date)
ORDER BY week_number;