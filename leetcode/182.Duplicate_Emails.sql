# 182.Duplicate Emails
select email as 'Email'
from Person group by email having count(email)>1