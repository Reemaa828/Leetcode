# Write your MySQL query statement below
with cte_try as 
(select class,count(student) from courses group by class having count(Student) >= 5)

select class from cte_Try ;

