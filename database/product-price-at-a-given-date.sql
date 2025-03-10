# Write your MySQL query statement below
-- select ifnull(l.product_id,k.product_id) as product_id, ifnull(l.price,10) as price from 
-- (select product_id, new_price as price from products l where change_Date =(select max(change_date)
-- from products where change_Date <='2019-08-16' and l.product_id=product_id)) l right join products k on l.product_id=k.product_id group by k.product_id   ;

with cte as(
select product_id, new_price, row_number()over(partition by product_id order by change_date desc) l from products where change_date <='2019-08-16'
)
select distinct p.product_id,ifnull(cte.new_price,10) as price from cte right join products p on p.product_id=cte.product_id and cte.l=1