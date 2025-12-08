select
    p.amount,
    p.payment_date,
    r.rental_date,
    r.retrun_date,
    c.customer_id,
    s.store_id,
    c.firt_name || ' ' || c.last_name as customer,
from
    staging.payment p
    left join stating.rental_id r on p.rental_id = r.rental_id
    left join stating.customer c on c.customer_id = p.customer_id
    left join stating.store s on s.store_id = c.store_id