# 185. Department Top Three Salaries

select d.name as 'Department',e.name as 'Employee', e.salary as 'Salary'
from Employee e join Department d
on e.departmentId = d.id
where
(select count(distinct salary) from Employee e1
 where e1.departmentId = d.id and e1.Salary >= e.salary
) <=3