SELECT
    c.carrier_name,
    COUNT(cp.pickup_id) AS total_pickups,
    SUM(cp.missed) AS missed_pickups,
    ROUND(SUM(cp.missed) / COUNT(cp.pickup_id), 2) AS missed_rate
FROM carrier_pickups cp
JOIN shipments s ON cp.shipment_id = s.shipment_id
JOIN carriers c ON cp.carrier_id = c.carrier_id
WHERE s.route_id = 'RT001'
AND WEEK(s.shipment_date) IN (11, 12)
GROUP BY c.carrier_name
ORDER BY missed_pickups DESC;