# 626.Exchange Seats

select case when s1.id % 2 !=0  and s1.id = tbl.counts then tbl.counts
when s1.id % 2 !=0 and s1.id != tbl.counts then s1.id +1 
else s1.id -1
end as 'id',
student
from Seat s1, (select count(*) as 'counts' from Seat) tbl
order by id