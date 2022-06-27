# 197.Rising Temperature
select today.id from 
Weather today, Weather yest
where
today.recordDate > yest.recordDate
and yest.recordDate = DATE_SUB(today.recordDate, INTERVAL 1 DAY)
and today.temperature > yest.temperature