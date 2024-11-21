# Write your MySQL query statement below
select row_number()over() as id,student from seat,
(select tt from (select 
case when k%2=0 then k when l%2<>0 then l when k is null or l is null then id end as tt from (
select id,lag(id)over w as l, lead (id) over w k from seat window w as(order by id) )o) x) m where tt=id;
    