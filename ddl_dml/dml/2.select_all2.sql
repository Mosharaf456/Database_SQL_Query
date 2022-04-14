select * from  mdb1.users where roleID = NULL;
select * from  mdb1.users where roleID is NULL;
select * from  mdb1.users where roleID is not NULL;

/*
arithmatic operation
+ - * / %
select 5+3

comparison operators
=
> 
<
>=
<=
<>  not equal
!=  not equal
/*
select roleID,AVG(money) from mdb1.users group by roleID;
###we can,t use where with group by statements ,,use having that is like as where

select count(*) AS Money,Name from mdb1.users group by money having money <= 500;
###AS is aliases.. current dummy name by using AS
select count(*) AS Money1,Name from mdb1.users group by money having money <= 500;
######



