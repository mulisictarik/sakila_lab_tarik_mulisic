### How much money does each film category bring in?

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
