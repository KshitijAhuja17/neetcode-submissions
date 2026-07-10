-- Write your query below
with cte as (
    select*, case
    when order_date = customer_pref_delivery_date then 1.0
    else 0.0
end as same_date
from delivery)

select round(sum(same_date)*100/count(*),2) as immediate_percentage
from cte