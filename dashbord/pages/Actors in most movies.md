### Which actors have played in the most movies?

```sql most_movies
SELECT
    actor,
    movie_count
FROM sakila.most_movies
LIMIT 10;
```

<BarChart 
    data={most_movies}
    title="Top 10 Actors by Number of Movies"
    x=actor
    y=movie_count 
    swapXY=true 
/>
