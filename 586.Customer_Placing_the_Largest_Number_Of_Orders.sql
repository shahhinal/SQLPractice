# 586. Customer Placing the Largest Number Of Orders

select customer_number from
(
select count(order_number) as 'freq' , customer_number 
from Orders
group by customer_number
order by freq desc
limit 1
) tbl