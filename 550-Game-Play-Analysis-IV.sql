-- -- # Write your MySQL query statement below
with cte_Exp as(
select count(*) as l
from 
    activity 
where 
    (player_id , adddate(event_date, interval -1 day))  in (select player_id, min(event_date) from activity group by player_id  ) 
group by 
    player_id 
    )
select round(count(l)/(Select count(distinct player_id) from activity),2) as fraction from cte_Exp
