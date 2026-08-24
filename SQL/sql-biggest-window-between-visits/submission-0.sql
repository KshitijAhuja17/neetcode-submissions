-- Write your query below
with cte as (SELECT 
  user_id, 
  visit_date, 
  LEAD(visit_date, 1, '2021-01-01') OVER (PARTITION BY user_id ORDER BY visit_date) AS next_visit
FROM user_visits)

select user_id,
max(next_visit - visit_date) as biggest_window
from cte
group by user_id
order by user_id