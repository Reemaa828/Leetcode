# Write your MySQL query statement below


-- select round(avg(order_date=customer_pref_delivery_Date)*100,2) as immediate_percentage 
-- from (select *,rank()over(partition by customer_id order by order_date) l from delivery) k 
-- where k.l=1

select round(avg(order_date=customer_pref_delivery_Date)*100,2) as immediate_percentage from delivery where (customer_id, order_date) in (select customer_id, min(order_Date) from delivery group by customer_id  )