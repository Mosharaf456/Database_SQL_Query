CREATE FUNCTION user_status (money decimal(15,2))
RETURNS varchar(20)
deterministic
BEGIN
declare user_status varchar(20);
if money<100 then
	set user_status = 'regular_user';
elseif(money>=100 and money<500)then
	set user_status = 'important_user';
elseif money>=500 then
	set user_status = 'vip_user';
end if;
RETURN (user_status);
END
