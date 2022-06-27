# 1393. Capital Gain/Loss

select s.stock_name, SUM( CASE WHEN s.operation ="Buy" THEN
                        -price ELSE price END) as "capital_gain_loss"
from Stocks s
group by stock_name
order by operation_day 