SELECT
    title,
    length
FROM
    staging.film
WHERE
    length > 180
ORDER BY
    length DESC;