-- Write your query below
with cte as (select name, salary, department_id,
rank() over(partition by department_id order by salary desc) as rn
from employee)

select d.name as department, c.name as employee, c.salary as salary
from department d
join cte c
on d.id = c.department_id
where c.rn = 1
order by salary desc;