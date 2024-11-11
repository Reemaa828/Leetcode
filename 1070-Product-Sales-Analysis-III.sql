# Write your MySQL query statement below
with cte as(
select 
    product_id,year as first_year,quantity,price,rank()over(partition by product_id order by year ) l from 
    sales inner join product using(product_id) 
)
select product_id,first_year,quantity,price from cte where cte.l =1