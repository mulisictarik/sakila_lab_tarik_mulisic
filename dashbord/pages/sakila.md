# Exploring sakila database

# Films in sakila

```sql films
   select *
from sakila.film;
```

## Top customer

```sql rental
select
customer,
sum(amount) as total_amount,
count(*) as number_of_rentals
from sakila.rental_customer
group by customer_id,
customer,

order by
total_amount  desc,
number_of_rentals desc
limit 10;
```

<AreaChart
data={rental}
title="Top customers by total amount paid"
x=customer
y=total_amount
swapXY = true
orientation='horizontal' 
/>

## Films that are longer then 3 hours (180 minutes)

```sql long_films
select
    title,
    length
from sakila.long_films;
```

### 📏 Length Comparison: Standard Horizontal

<BarChart
    data={long_films}
    title="Ranking of Longest Films (Minutes)"
    x=title
    y=length
    orientation='horizontal'  
    xAxisTitle="Film Title"
    yAxisTitle="Length (minutes)"
    yFormat="0"  
    size='medium'
/>
