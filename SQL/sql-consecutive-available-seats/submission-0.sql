-- Write your query below
-- select distinct c1.seat_id as seat_id
-- from cinema c1
-- join cinema c2
-- on abs(c1.seat_id - c2.seat_id) = 1
-- where c1.free = 1 and c2.free = 1

SELECT DISTINCT a.seat_id
FROM cinema a
JOIN cinema b 
  ON ABS(a.seat_id - b.seat_id) = 1
WHERE a.free = 1 AND b.free = 1;