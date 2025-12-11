SELECT
    c.name AS category,
    SUM(p.amount) AS total_revenue
FROM
    staging.payment p
    JOIN staging.rental r ON p.rental_id = r.rental_id
    JOIN staging.inventory i ON r.inventory_id = i.inventory_id
    JOIN staging.film f ON i.film_id = f.film_id
    JOIN staging.film_category fc ON f.film_id = fc.film_id
    JOIN staging.category c ON fc.category_id = c.category_id
GROUP BY
    c.name
ORDER BY
    total_revenue DESC;