# Write your MySQL query statement below
select machine_id, round(sum(abs(timestamp - l))/count(distinct process_id),3) as processing_time from (select * ,lag(timestamp)over(partition by process_id,machine_id ) l from activity) k where k.l is not null group by machine_id 

