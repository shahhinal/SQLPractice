# 183. Customers who never order

#21.75% acceptance
# select name as 'Customers' from
# Customers where
# id not in (select distinct customerId from Orders)

#40.14% acceptance
select name as 'Customers' from
Customers c left join Orders o
on c.id = o.customerId
where o.customerId is null
