# Write your MySQL query statement below
-- with cte as(
-- select 
--     product_id,year as first_year,quantity,price,rank()over(partition by product_id order by year ) l from 
--     sales 
-- )
-- select product_id,first_year,quantity,price from cte where cte.l =1
select product_id,year as first_year,quantity,price from sales
where(product_id,year) in (select product_id, min(year)  from sales inner join product using(product_id) group by product_id );