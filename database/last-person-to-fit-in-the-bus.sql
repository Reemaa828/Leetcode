# Write your MySQL query statement below
with cte as 
(select  *, sum(weight)over(order by turn rows between unbounded preceding and current row) k from queue)
select person_name from  cte where turn=(select max(turn)from cte where cte.k<=1000)  ;