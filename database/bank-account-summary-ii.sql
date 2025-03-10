# Write your MySQL query statement below
select l.name, sum(amount) as balance from users l inner join transactions k on l.account=k.account group by l.account having sum(amount) > 10000