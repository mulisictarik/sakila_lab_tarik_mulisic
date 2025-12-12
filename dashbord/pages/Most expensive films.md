### The 10 most expensive movies to rent per day.

```sql top_rent
SELECT
    title,
    rental_rate,
    rental_duration,
    ROUND(rental_rate / rental_duration, 2) as price_per_day
FROM
    sakila.top_rent
WHERE
    rental_duration > 0
ORDER BY
    price_per_day DESC
LIMIT 10;
```

<BarChart 
    data={top_rent}
    x=title
    y=price_per_day
    title="Expensive movies to rent per day"
    yFmt=usd2
    sort=true
    color="#3b82f6"
    height=350
    labels=true
    labelFontSize=11
/>
