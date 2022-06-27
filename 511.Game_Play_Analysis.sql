#511. Game Play Analysis

# 98.04% acceptance
select player_id, min(event_date) as 'first_login'
from Activity 
group by player_id 