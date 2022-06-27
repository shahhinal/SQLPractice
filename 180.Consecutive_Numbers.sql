#180. Consecutive numbers

#24.95% acceptance
#select distinct num as 'ConsecutiveNums' from
#(
#select num,
#lag(num) over (order by id) as prev_num,
#lead(num) over (order by id) as next_num
#from Logs 
#) tb1
#where num = prev_num and num = next_num

# 89.13% acceptance
select distinct l1.num as 'ConsecutiveNums' from
Logs l1, Logs l2, Logs l3
where l1.id + 1 = l2.id and l2.id + 1 = l3.id and l1.num = l2.num and l2.num = l3.num 