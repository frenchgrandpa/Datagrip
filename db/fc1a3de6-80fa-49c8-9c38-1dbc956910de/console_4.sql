SELECT t.id, t.created_at, t.email, t.first_name, t.language, t.last_name, t.phone, g0.guest_id, g0.restaurant_id
FROM (
    SELECT g.id, g.created_at, g.email, g.first_name, g.language, g.last_name, g.phone
    FROM guests AS g
    WHERE g.email = 'asd@asd.com'
    LIMIT 2
) AS t
LEFT JOIN guest_restaurant AS g0 ON t.id = g0.guest_id
ORDER BY t.id, g0.guest_id
