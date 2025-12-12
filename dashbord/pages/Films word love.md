### Which movies have the word "love" in its title?

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
