/*seesion variable is a user defined variable as a parameter pass,,, 
so don,t require declartion of that session variable  @ sine variable
non visible for other session
and exists the end of current session
*/
CALL select_avg_money(@avg_money);
select @avg_money as average_money;