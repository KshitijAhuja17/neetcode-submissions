-- Write your query below
with cte as
(
    select *
    from company c
    join orders o
    on c.com_id = o.com_id
    and c.name = 'CRIMSON'
)

select name 
from sales_person
where sales_id not in 
(select distinct(sales_id) from cte);