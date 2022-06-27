# 196. Delete Duplicate Emails

# 15.44% acceptance
#delete p1 from Person p1, Person p2
#where p1.id>p2.id and p1.email = p2.email

# 91.27% acceptance
delete from Person p
where p.id not in
(select id from
(select min(id) as 'id' from Person group by email)tbl
)

