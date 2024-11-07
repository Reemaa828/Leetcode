# Write your MySQL query statement below
select e.name as Employee from employee e join employee f on e.managerid=f.id where e.salary > f.salary ;