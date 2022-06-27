# 1158.Market Analysis

#24.46% acceptance
#select u.user_id as buyer_id, u.join_date, 
#SUM(
#    CASE WHEN o.order_date>='2019-01-01' and o.order_Date <'2020-01-01'
#    THEN 1
#    ELSE 0
#    END
#) AS orders_in_2019 from
#Users u left join Orders o
#on o.buyer_id = u.user_id
#group by u.user_id

# 71.09% acceptance
select u.user_id as buyer_id, u.join_date, 
SUM(
    CASE WHEN year(o.order_date) ='2019' 
    THEN 1
    ELSE 0
    END
) AS orders_in_2019 from
Users u left join Orders o
on o.buyer_id = u.user_id
group by u.user_id