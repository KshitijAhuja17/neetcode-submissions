-- Write your query below

SELECT DISTINCT t1.account_id as account_id
FROM log_info t1
JOIN log_info t2 
  ON t1.account_id = t2.account_id
WHERE t1.ip_address != t2.ip_address
AND t1.login <= t2.logout
AND t2.logout <= t1.logout;