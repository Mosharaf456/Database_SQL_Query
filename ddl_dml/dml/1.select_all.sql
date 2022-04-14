SELECT * FROM mdb1.users;
select Name , Address from mdb1.users;
### ascending order 0,1,2,3,4 like that
select * from mdb1.users order by Name ASC;
## descending order 4,3,2,1,0 like that
select * from mdb1.users order by Name DESC;

select * from mdb1.users where Name='Mosharaf';

select distinct Name from mdb1.users;
###started from Ra
select * from  mdb1.users where Name like "Ra%";
###second from o
select * from  mdb1.users where Name like "_o%";

###third from s
select * from  mdb1.users where Name like "__s%";

######pagination
##1,2
select * from  mdb1.users order by money limit 2;
##2,5
select * from  mdb1.users order by money limit 1,2;


