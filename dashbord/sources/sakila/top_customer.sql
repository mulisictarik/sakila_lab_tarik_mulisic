SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer,
    SUM(p.amount) AS total_spend
FROM
    staging.customer c
    JOIN staging.payment p ON c.customer_id = p.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
ORDER BY
    SUM(p.amount) DESC
LIMIT
    5;