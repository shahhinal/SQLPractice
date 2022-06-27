# 607. Sales Person

# 29.89% acceptance
#select distinct p.name from 
#SalesPerson p left join Orders o 
#on p.sales_id = o.sales_id 
#where p.sales_id not in 
#(select sales_id from orders o join company c on o.com_id = c.com_id where c.name = --'RED')


# 81.93% acceptance
#select distinct p.name from 
#SalesPerson p 
#where p.sales_id not in 
#(select sales_id from orders o join company c on o.com_id = c.com_id where c.name = --'RED')

# 93.51% acceptance
select distinct p.name from 
SalesPerson p left join Orders o 
on p.sales_id = o.sales_id 
where p.sales_id not in 
(select sales_id from orders o join company c on o.com_id = c.com_id where c.name = 'RED')