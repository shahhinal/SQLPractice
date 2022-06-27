# 595. Big Countries

#88.27% acceptance
select name, population, area 
from World 
where area >= 3000000 or population >= 25000000
