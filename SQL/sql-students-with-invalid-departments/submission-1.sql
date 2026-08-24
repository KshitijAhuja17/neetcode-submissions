-- Write your query below

select id, name
from students
where department_id not in (
    select id from departments
)
union
select id, name
from students
where department_id is null;