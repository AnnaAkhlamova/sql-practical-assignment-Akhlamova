WITH movies_sales AS (
    SELECT
        t.movie_id,
        SUM(t.price_dollars) AS revenue,
        COUNT(t.ticket_id) AS total_tickets
    FROM tickets t
    GROUP BY t.movie_id
)

(
    SELECT 
    m.movie_name,
    ch.hall_name,
    w.name AS worker_name,
    c.email AS client_email,
    MAX(ms.revenue) AS revenue,
    MAX(ms.total_tickets) AS total_tickets
FROM movies m
LEFT JOIN movies_sales ms ON m.movie_id = ms.movie_id
LEFT JOIN tickets t ON m.movie_id = t.movie_id
LEFT JOIN clients c ON c.client_id = t.client_id
LEFT JOIN cinema_hall ch ON ch.hall_id = t.hall_id
LEFT JOIN workers w ON w.hall_id = ch.hall_id
WHERE ms.total_tickets > 1
GROUP BY m.movie_name, ch.hall_name, w.name, c.email
HAVING MAX(ms.revenue) > 10
ORDER BY MAX(ms.revenue) DESC
LIMIT 5
)
UNION ALL
(
    SELECT 
        NULL AS movie_name,
        NULL AS hall_name,
        NULL AS worker_name,
        c.name AS client_name,
        NULL AS revenue,
        NULL AS total_tickets
    FROM clients c
    WHERE c.client_id NOT IN (SELECT client_id FROM tickets)
);
