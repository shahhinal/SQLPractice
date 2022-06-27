#177.Nth Highest Salary

#22.23% acceptance
#CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
#BEGIN
#  RETURN (
      
#      select salary from 
#      (
#        select salary, DENSE_RANK() OVER (order by salary desc) as 'rank_num' from --Employee
#        order by rank_num 
#      ) tbl where rank_num =N
#      limit 1
#  );
#END

# 56.08% acceptance
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      
      select salary from 
      (
        select salary, DENSE_RANK() OVER (order by salary desc) as 'rank_num' from Employee
    
      ) tbl where rank_num =N
      limit 1
  );
END