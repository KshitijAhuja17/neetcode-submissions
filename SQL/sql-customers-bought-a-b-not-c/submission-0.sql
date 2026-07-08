-- Write your query below

select c.customer_id, customer_name
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_id
HAVING SUM(CASE WHEN product_name = 'A' THEN 1 ELSE 0 END) > 0
AND SUM(CASE WHEN product_name = 'B' THEN 1 ELSE 0 END) > 0
AND SUM(CASE WHEN product_name = 'C' THEN 1 ELSE 0 END) = 0
order by customer_name;