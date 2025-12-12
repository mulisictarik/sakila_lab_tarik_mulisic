### Who are our top 5 customers by total spend?

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
