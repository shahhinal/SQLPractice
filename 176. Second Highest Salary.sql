#176. Second Highest Salary
select IFNULL(
(select Max(salary) from Employee 
 where salary < (select Max(salary) from Employee)), null)
as 'SecondHighestSalary'