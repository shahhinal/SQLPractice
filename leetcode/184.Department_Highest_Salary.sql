# 184. Department Highest Salary

# 87.60% acceptance
select Department, Employee, Salary from
(
select d.name as 'Department' , e.name as 'Employee',  e.salary as 'Salary', 
rank() over (partition by d.id order by e.salary desc) as rank_num
from Employee e inner join Department d
on e.departmentId = d.id
) tbl
where rank_num =1