-- Write your query below
with cte as(
select employee_id
from employees
where manager_id = 1)
, cte2 as(
select employee_id
from employees
where manager_id in (select * from cte))

select employee_id
from employees
where manager_id in (select * from cte2)
and employee_id <> 1