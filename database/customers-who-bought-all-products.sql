# Write your MySQL query statement below
select
    customer_id
from 
    customer inner join product using(product_key) 
group by 
    customer_id 
Having
    count(distinct product_key)=(select count(*) from product)