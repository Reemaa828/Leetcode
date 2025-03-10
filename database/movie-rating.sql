-- # Write your MySQL query statement 
with cte as(
select name, user_id, count(*)over(partition by user_id order by user_id) l
from users inner join movierating 
using(user_id)),
cte1 as (
    select title, avg(rating)over(partition by movie_id) k from movies inner join movierating using(movie_id) where date_Format(created_at,'%Y-%m')='2020-02'
)
(select  distinct min(name) as results from cte where l = (select max(l) from cte))
union all
(select min(title) as result from cte1 where k=(Select max(k) from cte1))