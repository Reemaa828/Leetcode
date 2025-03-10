# Write your MySQL query statement below
-- select * 
-- from
--     (select distinct adddate(visited_on,interval 6 day) visited_on,

--       (select round(sum(amount),2) from customer where visited_on between l.visited_on and adddate(l.        visited_on,interval 6 day) ) as amount , 

--       (select round(sum(amount)/7,2) from customer where visited_on between l.visited_on and adddate(l.visited_on,interval 6 day) ) as average_amount from customer l) k 
-- where 
--     visited_on <= (select max(visited_on) from customer) ;  
  select distinct visited_on, sum(amount)over w as amount, round((sum(amount)over w)/7,2) as average_amount from customer where date_sub(visited_on,interval 6 day)
  window w as (order by visited_on range between interval 6 day preceding and current row) 
  limit 9999 offset 6;