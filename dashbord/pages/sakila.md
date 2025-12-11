# Sakila DVD Rental Analysis

### Which movies are longer than 3 hours (180 minutes)? Show the title and its length.

```sql long_films
select
    title,
    length
from sakila.long_films;
```

<BarChart
    data={long_films}
    x="title"
    y="length"
    svapXY=true
/>

### Which movies have the word "love" in its title? Show the following columns: title, rating, length, description.

```sql word_love
select
title,
length,
rating,
description
FROM sakila.word_love;
```

<BarChart
data={word_love}
title="Films that have the word Love in the title"
x=title 
y=length
svapXY=true
/>

### The 10 most expensive movies to rent per day. Calculate the rental cost per day (rental_rate / rental_duration) and show the top 10.

```sql top_rent
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
LIMIT 10;
```

<BarChart
data={top_rent}
title=""
x=customer
y=price_per_day
svapXY=true
/>

### Which actors have played in the most movies? Show the top 10 actors with the number of movies they have played in.

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

### Who are our top 5 customers by total spend?. Create a bar chart showing the top 5 customers by total spend.

```sql top_customer
select
customer,
total_spend
from sakila.top_customer;
```

<BarChart 
    data={top_customer}
    title="The top 5 customers by total spend ($)"
    x=customer
    y=total_spend
    swapXY=true 
/>

### How much money does each film category bring in?. Make a bar chart showing total revenue per film category.

```sql top_category
select
category,
total_revenue

from sakila.top_category;
```

<BarChart 
    data={top_category}
    title="The categorys with how much money each category bring in-"
    x=category
    y=total_revenue
    swapXY=true 
/>
