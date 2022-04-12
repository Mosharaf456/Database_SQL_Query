-- 0cross join ,,all poosible combination
select u.userID ,u.email,r.role_type from mdb1.users u  cross join mdb1.roles r; 

/* Select
1.inner join  
*/
select u.userID ,u.email,r.role_type from mdb1.users u inner join mdb1.roles r
on u.roleID = r.roleID; 

##2 left join  
select u.userID ,u.email,r.role_type from mdb1.users u left join mdb1.roles r
on u.roleID = r.roleID; 

#3 right join
select u.userID ,u.email,r.role_type from mdb1.users u right join mdb1.roles r
on u.roleID = r.roleID; 

-- 4full order join by using union keyword
select * from mdb1.users u left join mdb1.roles r
on u.roleID = r.roleID
UNION
select * from mdb1.users u right join mdb1.roles r
on u.roleID = r.roleID; 

#####sub queries ()
select * from mdb1.users where money > (select avg(money) from mdb1.users);






   