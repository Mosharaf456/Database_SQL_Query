use mdb1;
delimiter $$
create trigger add_default_role_if_empty
before insert
on users
for each row
begin
	if new.roleID is null then
		set new.roleID = 6 ;
	end if;
end$$
delimiter ;
