-- Write your query below
with cte as(
    select *,
rank() over(partition by product_id order by order_date desc) as rn
from orders)

select p.product_name as product_name, p.product_id as product_id, c.order_id as order_id, c.order_date as order_date 
from products p
join cte c
on p.product_id = c.product_id
where rn = 1
order by product_name, product_id, order_id;
