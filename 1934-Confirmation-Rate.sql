# Write your MySQL query statement below
select s.user_id, round(avg(if(action='confirmed',1,0)),2) as confirmation_Rate from signups s left join confirmations c using(user_id)  group by s.user_id 