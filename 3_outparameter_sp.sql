CREATE PROCEDURE select_avg_money (out avg_money INT)
BEGIN
	select avg(money) into avg_money from users;
END
