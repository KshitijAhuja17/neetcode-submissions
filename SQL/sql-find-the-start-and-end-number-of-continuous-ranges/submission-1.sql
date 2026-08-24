-- Write your query below
with cte as (select log_id, row_number() over(order by log_id) as rn
from logs)
,
cte2 as
(
select *,
log_id - rn as diff
from cte)

select min(log_id) as start_id, max(log_id) as end_id
from cte2
group by diff
order by start_id;