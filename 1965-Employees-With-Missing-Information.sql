# Write your MySQL query statement below
(select s.employee_id from employees s left join salaries using(employee_id) where salary is null )
union 
(select o.employee_id from employees right join salaries o using(Employee_id) where name is null )
order by employee_id