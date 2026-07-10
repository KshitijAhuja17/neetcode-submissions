with cte as
(
SELECT 
    e.left_operand, 
    v1.value AS left_val,
    e.right_operand,
    v2.value AS right_val,
    operator,
    case
        when operator = '<' then
            case
                when v1.value < v2.value then 'true'
                else 'false'
        end
        when operator = '=' then
            case
                when v1.value = v2.value then 'true'
                else 'false'
        end
        when operator = '>' then
            case
                when v1.value > v2.value then 'true'
                else 'false'
        end
        else 'true'
    end as value
FROM expressions e
JOIN variables v1 ON e.left_operand = v1.name
JOIN variables v2 ON e.right_operand = v2.name)


select left_operand, operator, right_operand, value
from cte