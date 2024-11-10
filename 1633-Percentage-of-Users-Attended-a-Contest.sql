# Write your MySQL query statement below
select contest_id, round((count(u.user_id)/(Select count(user_id) from users)) * 100,2) as percentage from register inner join users u using(user_id) group by contest_id order by percentage desc,contest_id;
