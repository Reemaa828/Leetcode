# Write your MySQL query statement below 
-- (select id, 'Root' as type from tree where p_id is null)
-- union
-- (Select id, 'Inner' as type from tree where  p_id is not null and id in (Select p_id from tree))
-- union
-- (
-- select id, 'Leaf' as type from tree where id not in  (select tt.id from tree t inner join tree tt on t.p_id=tt.id ) and p_id is not null 
-- )
select id , case when p_id is null then 'Root'
when id in (select p_id from tree) then 'Inner'
else 'Leaf'
end as type
from tree ;