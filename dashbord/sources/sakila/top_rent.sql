SELECT
    title,
    rental_rate,
    rental_duration,
    ROUND(rental_rate / rental_duration, 2) as price_per_day
FROM
    staging.film
WHERE
    rental_duration > 0
ORDER BY
    price_per_day DESC
LIMIT
    10;