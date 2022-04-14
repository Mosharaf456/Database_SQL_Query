CREATE PROCEDURE select_user_by_email (in in_email varchar(50))
BEGIN
	select * from users where email = in_email;
END