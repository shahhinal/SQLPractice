# 1050. Actors And Directors Who Cooperated At Least Three Times

# 57.57% acceptance

#select actor_id, director_id
#from ActorDirector
#group by actor_id, director_id
#having count(*) >= 3

# 82.57% acceptance
select distinct actor_id, director_id
from (
select actor_id, director_id, 
row_number() over (partition by actor_id, director_id) as row_num
from ActorDirector 
) tbl
where row_num >=3

