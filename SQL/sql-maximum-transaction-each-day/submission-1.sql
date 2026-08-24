-- Write your query below

with cte as (SELECT transaction_id, 
       RANK() OVER(PARTITION BY DATE(day) ORDER BY amount DESC) as rnk
FROM transactions)

select transaction_id
from cte
where rnk = 1
order by transaction_id;