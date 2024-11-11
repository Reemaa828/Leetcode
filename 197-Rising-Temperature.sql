# Write your MySQL query statement below

select id from (select *, lag(recorddate)over(order by recordDate) m, lag(temperature)over(order by recordDate) l from weather  ) k where k.temperature > k.l and datediff(recorddate,k.m) =1