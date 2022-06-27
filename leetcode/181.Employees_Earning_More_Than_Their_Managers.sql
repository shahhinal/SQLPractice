# 181. Employees Earning More Than Their Managers

#40.84% acceptance
#select e2.name as 'Employee'
#from Employee e1 inner join Employee e2
#on e1.id = e2.managerId
#where e1.salary < e2.salary

#91.82% acceptance
select e2.name as 'Employee'
from Employee e1 inner join Employee e2
on e1.id = e2.managerId
and  e1.salary < e2.salary