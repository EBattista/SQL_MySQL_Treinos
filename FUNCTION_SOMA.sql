set global log_bin_trust_function_creators = 1;		#Contornar erro para função não deterministica

DELIMITER $$
create function SOMA (x decimal(5,2), y decimal(5,2))
returns decimal (5,2) 

begin

declare total decimal(5,2);

set total = x + y;

return total;

end$$

SELECT SOMA (30,9);