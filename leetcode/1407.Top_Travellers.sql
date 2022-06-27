# 1407. Top Travellers

# 1472 ms
#select  u.name, SUM( IF(r.distance is null, 0, r.distance)) as travelled_distance
#from Users u left join Rides r 
#on u.id = r.user_id
#group by u.id
#order by travelled_distance desc, u.name asc

# 976 ms
select u.name, IFNULL(SUM(r.distance),0) as travelled_distance
from Users u left join Rides r 
on u.id = r.user_id
group by u.id
order by travelled_distance desc, u.name asc 