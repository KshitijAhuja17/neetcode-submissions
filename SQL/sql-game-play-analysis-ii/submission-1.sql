-- Write your query below

-- select player_id, device_id
-- from activity
-- where (player_id, event_date) in (select player_id, min(event_date)
-- from activity
-- group by player_id)

select player_id, device_id
from (
SELECT player_id, device_id, 
RANK() OVER(PARTITION BY player_id ORDER BY event_date ASC) as rn
from activity ) t
where rn = 1;