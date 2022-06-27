# 1179. Reformat Department Table

# took 1346 secs
#select id,
#SUM(CASE WHEN month ='Jan' THEN revenue ELSE NULL END) as Jan_Revenue,
#SUM(CASE WHEN month ='Feb' THEN revenue ELSE NULL END) as Feb_Revenue,
#SUM(CASE WHEN month ='Mar' THEN revenue ELSE NULL END) as Mar_Revenue,
#SUM(CASE WHEN month ='Apr' THEN revenue ELSE NULL END) as Apr_Revenue,
#SUM(CASE WHEN month ='May' THEN revenue ELSE NULL END) as May_Revenue,
#SUM(CASE WHEN month ='Jun' THEN revenue ELSE NULL END) as Jun_Revenue,
#SUM(CASE WHEN month ='Jul' THEN revenue ELSE NULL END) as Jul_Revenue,
#SUM(CASE WHEN month ='Aug' THEN revenue ELSE NULL END) as Aug_Revenue,
#SUM(CASE WHEN month ='Sep' THEN revenue ELSE NULL END) as Sep_Revenue,
#SUM(CASE WHEN month ='Oct' THEN revenue ELSE NULL END) as Oct_Revenue,
#SUM(CASE WHEN month ='Nov' THEN revenue ELSE NULL END) as Nov_Revenue,
#SUM(CASE WHEN month ='Dec' THEN revenue ELSE NULL END) as Dec_Revenue
#from Department 
#group by id

# took 766 secs
select id,
SUM( IF (month ='Jan' , revenue, NULL) ) as Jan_Revenue,
SUM( IF (month ='Feb' , revenue, NULL)) as Feb_Revenue,
SUM( IF (month ='Mar' , revenue, NULL)) as Mar_Revenue,
SUM( IF (month ='Apr' , revenue, NULL)) as Apr_Revenue,
SUM( IF (month ='May' , revenue, NULL)) as May_Revenue,
SUM( IF (month ='Jun' , revenue, NULL)) as Jun_Revenue,
SUM( IF (month ='Jul' , revenue, NULL)) as Jul_Revenue,
SUM( IF (month ='Aug' , revenue, NULL)) as Aug_Revenue,
SUM( IF (month ='Sep' , revenue, NULL)) as Sep_Revenue,
SUM( IF (month ='Oct' , revenue, NULL)) as Oct_Revenue,
SUM( IF (month ='Nov' , revenue, NULL)) as Nov_Revenue,
SUM( IF (month ='Dec' , revenue, NULL)) as Dec_Revenue
from Department 
group by id
