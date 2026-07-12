-- Write your query below
with cte as (select s.employee_id as employee_id
from salaries s
left join employees e
on s.employee_id = e.employee_id
where name is null

union all

select e.employee_id as employee_id
from employees e
left join salaries s
on e.employee_id = s.employee_id
where salary is null)


select * from cte
order by employee_id