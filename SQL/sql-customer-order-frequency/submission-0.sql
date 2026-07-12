-- Write your query below

select
customer_id, name
from customers 
where customer_id in 
(select o.customer_id
from orders o
join product p
on o.product_id = p.product_id
where o.order_date >= '2020-06-01' and order_date <= '2020-06-30'
group by o.customer_id
having sum(o.quantity*p.price) >= 100)

intersect

select
customer_id, name
from customers 
where customer_id in 
(select o.customer_id
from orders o
join product p
on o.product_id = p.product_id
where o.order_date >= '2020-07-01' and order_date <= '2020-07-31'
group by o.customer_id
having sum(o.quantity*p.price) >= 100)