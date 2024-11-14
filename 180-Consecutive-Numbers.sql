# Write your MySQL query statement below
select distinct num as ConsecutiveNums from (select num,lead(num)over() m, lag(num)over() l from logs) k where k.l =k.m and num=k.m ;