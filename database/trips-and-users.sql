# Write your MySQL query statement belw
select 
    REQUEST_aT as Day, 
    round(sum(case when status like 'cancell%' then 1 else 0 end)/count(*),2) as "Cancellation Rate"
from 
    trips 
where 
    request_at between '2013-10-01' and '2013-10-03'
    AND 
    (CLIENT_id in (select userS_id from users where banned= 'NO') 
    AND 
    driver_id in (select userS_id from users where banned='NO'))
group by 
    request_at