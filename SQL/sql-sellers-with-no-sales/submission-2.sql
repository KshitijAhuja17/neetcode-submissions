-- Write your query below
-- select seller_name
-- from seller
-- where seller_id not in
-- (select distinct(seller_id)
-- from orders
-- WHERE sale_date BETWEEN '2020-01-01' AND '2020-12-31')
-- order by seller_name


select seller_name
from seller s
left join orders o
on s.seller_id = o.seller_id
and o.sale_date BETWEEN '2020-01-01' AND '2020-12-31'
where o.order_id is null
order by seller_name;
