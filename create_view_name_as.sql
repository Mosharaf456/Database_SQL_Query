CREATE  VIEW `user1_email_role_type` AS
select u.email, r.role_type from mdb1.users u join mdb1.roles r
on u.roleID = r.roleID;