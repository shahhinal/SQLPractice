#596. Classes More than 5 Students

# 42.36% acceptance
#select distinct class from 
#(
#    select class, row_number() over (partition by class) as row_num
#    from Courses
#) tbl
#where row_num>=5

# 44.31% acceptance
#select class from
#Courses 
#group by class
#having count(distinct student) >=5

# 72.51% acceptance
select class from
Courses 
group by class
having count(*) >=5