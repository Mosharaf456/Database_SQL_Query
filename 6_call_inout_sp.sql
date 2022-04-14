set @counter = 1;
call increment(@counter , 3); -- 4
call increment(@counter , 5); #9
call increment(@counter , 3); /*12*/
select @counter;