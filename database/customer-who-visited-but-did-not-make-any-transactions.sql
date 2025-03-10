/* Write your T-SQL query statement below */

select customer_id, count(v.visit_id) count_no_trans from visits v left join transactions vv on v.visit_id = vv.visit_id  where vv.transaction_id is null group by customer_id
