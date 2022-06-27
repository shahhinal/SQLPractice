# 1084. Sales Analysis III

select product_id, product_name from
(
select s.product_id, p.product_name, max(sale_date) as "max_date" from 
Sales s join Product p
on s.product_id = p.product_id
group by s.product_id, p.product_name
having Min(sale_date) >= '2019-01-01'
) tbl
where QUARTER(tbl.max_date) = 1