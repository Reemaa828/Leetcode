# Write your MySQL query statement below
select max(salary) SecondHighestSalary from (select salary ,dense_rank()over(order by salary desc) x from employee) as r where r.x=2 ;