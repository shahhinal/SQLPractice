
# 620. Not Boring Movies

select id, movie, description, rating from 
(
select id, movie, description, rating,
row_number() Over (order by id, movie, description, rating)  as row_num
from Cinema
) tbl 
where row_num mod 2 <> 0 
and description <> 'boring'
order by rating desc