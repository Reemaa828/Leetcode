# Write your MySQL query statement below
select * 
from
    (select distinct adddate(visited_on,interval 6 day) visited_on,

      (select round(sum(amount),2) from customer where visited_on between l.visited_on and adddate(l.        visited_on,interval 6 day) ) as amount , 

      (select round(sum(amount)/7,2) from customer where visited_on between l.visited_on and adddate(l.visited_on,interval 6 day) ) as average_amount from customer l) k 
where 
    visited_on <= (select max(visited_on) from customer) ;    