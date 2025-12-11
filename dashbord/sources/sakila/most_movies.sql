SElECT
    a.first_name || ' ' || a.last_name as actor,
    count(fa.film_id) AS movie_count
FROM
    staging.actor a
    JOIN staging.film_actor fa ON a.actor_id = fa.actor_id
GROUP BY
    a.actor_id,
    a.first_name,
    a.last_name
ORDER BY
    movie_count DESC
LIMIT
    10;