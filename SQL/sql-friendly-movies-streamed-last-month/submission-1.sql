-- Write your query below


select distinct(title) as title
from tv_program t
join content c
on t.content_id = c.content_id
where program_date >= '2020-06-01 00:00' and program_date <= '2020-06-30 23:59' and kids_content = 'Y' and content_type = 'Movies'