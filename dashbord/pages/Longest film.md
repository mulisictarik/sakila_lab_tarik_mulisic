### Which movies are longer than 3 hours (180 minutes)? Show the title and its length.

```sql long_films
select
    title,
    length
from sakila.long_films
order by length desc;
```

<BarChart
data={long_films}
title="Comparison of Longest Films (Over 180 Minutes)"
x=title
y=length
svapXY=true
yAxisTitle="Film Length (Minutes)"
referenceLines={[
{ label: "3 Hour Threshold (180 min)", value: 180, lineStyle: "dashed" }
]}
/>
