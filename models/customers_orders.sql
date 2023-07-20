
with customers as (
select * from {{ ref('stg_customers') }}
),

orders as (
    select * from {{ ref('stg_orders') }}
)

select concat(c.first_name, ' ', c.last_name) customer_name,
       o.customer_id,
       sum(coalesce(cost,0))
from customers c 
join orders o on c.id = o.customer_id
group by 1,2

