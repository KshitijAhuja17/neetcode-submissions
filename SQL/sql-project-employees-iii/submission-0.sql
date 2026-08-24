-- Write your query below
with cte as 
(select project_id, e.employee_id,
rank() over(partition by project_id order by experience_years desc) as rn
from project p
join employee e
on p.employee_id = e.employee_id)

select project_id, employee_id
from cte
where rn = 1;