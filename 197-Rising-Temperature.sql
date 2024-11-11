# Write your MySQL query statement below

-- select id from (select *, lag(recorddate)over(order by recordDate) m, lag(temperature)over(order by recordDate) l from weather  ) k where k.temperature > k.l and datediff(recorddate,k.m) =1

select w1.id from weather w1 join weather w2 where datediff(w1.recorddate,w2.recorddate)=1 and w1.temperature > w2.temperature ;