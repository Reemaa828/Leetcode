# Write your MySQL query statement below
-- with cte_Ex as 
-- (select sales.product_id kk, product_name 
-- from sales inner join product using(product_id) 
-- where sale_date not between '2019-01-01' and '2019-03-31') 
-- select distinct sales.product_id , product_name 
-- from sales inner join product using(product_id) where sales.product_id not in (select kk from cte_ex) ;

select sales.product_id, product_name 
from  sales inner join product using(product_id) 
group by sales.product_id
having min(sale_date)>= '2019-01-01' and max(sale_date)<='2019-03-31'