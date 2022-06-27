# 262. Trips And Users

select request_at as 'Day', round(sum(case when status like '%cancelled%' then 1 else 0 end)/count(*),2) as 'Cancellation Rate' from
(
    select t.* from 
    Trips t join Users u
    on t.client_id = u.users_id
    join Users u1 on
    t.driver_id = u1.users_id
    where u.banned = 'No' and u1.banned = 'No'
    and t.request_at >= '2013-10-01' and t.request_at <='2013-10-03'
) tbl
group by request_at