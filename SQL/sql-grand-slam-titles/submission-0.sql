-- Write your query below
with cte as
(SELECT wimbledon AS player_id FROM championships
UNION ALL
SELECT fr_open FROM championships
UNION ALL
SELECT us_open FROM championships
UNION ALL
SELECT au_open FROM championships)

select c.player_id as player_id, p.player_name as player_name, count(*) as grand_slams_count
from cte c
join players p
on c.player_Id = p.player_id
group by c.player_id, p.player_name;