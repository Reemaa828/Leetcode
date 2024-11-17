/* Write your T-SQL query statement below */
with cte_1 as
(
    select requester_id as id from RequestAccepted
    union all 
    select accepter_id as id from RequestAccepted
)
select top 1 id, count(*) as num from cte_1 group by id order by num desc;