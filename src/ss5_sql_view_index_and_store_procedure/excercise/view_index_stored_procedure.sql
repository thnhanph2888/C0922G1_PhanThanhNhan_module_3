create database if not exists product_management;

use product_management;
create table product(
	id int auto_increment primary key,
    product_code varchar(20),
    product_name varchar(45),
    product_price int,
    product_amount int,
    product_description varchar(100),
    product_status varchar(50)
);

insert into product (product_code, product_name, product_price, product_amount, product_description, product_status) 
values 
	('abc_12', 'xe dap', 213, 12, 'mau xanh', 'chay duoc'),
	('abc_13', 'xe may', 23, 12, 'mau do', 'bao tri'),
	('abc_14', 'xe o to', 34, 12, 'mau den', 'hong'),
	('abc_15', 'xe tai', 909, 12, 'mau xam', 'chay duoc');

alter table product add index idx_product_code (product_code);
explain select * from product where product_code = 'ds';
alter table product add index idx_name_and_gia (product_name, product_price);
explain select * from product where product_name = 'ds';

alter table product drop index idx_name_and_gia;

create view view_product as
select product_code, product_name, product_price, product_status 
from product;

select * from view_product;
select * from product;

insert into view_product ( product_code, product_name, product_price, product_status ) 
values ('abc_2742', 'chao chong dinh', 1000, 'tray xuoc');

set sql_safe_updates = 0; 
update view_product 
set product_status = 'moi sua chua'
where product_code = 'abc_14';
set sql_safe_updates = 1; 

drop view view_product;

delimiter //
create procedure getAllProcedure ()
begin
	select * from product;
end //
delimiter ;

call getAllProcedure;

delimiter //
create procedure insertProcedure (code varchar(20), name varchar(45), price int, amount int, description varchar(100), status varchar(50))
begin
     insert into product ( product_code, product_name, product_price, product_amount, product_description, product_status) 
     values (code, name, price, amount, description, status);
end //
delimiter ;

call insertProcedure ('abc_20', 'bep dien tu', 100, 12, 'mau den', 'chay tot');

delimiter //
create procedure editProductById (id int, code varchar(20), name varchar(45), price int, amount int, description varchar(100), status varchar(50))
begin
	  update product p
      set p.product_code = code, 
      p.product_name = name,
      p.product_price = price,
      p.product_amount = amount,
      p.product_description = description,
      p.product_status = status
      where p.id = id;
end //
delimiter ;

drop procedure editProductById;
select * from product;

call editProductById (7, 'abc_21', 'bep hong ngoai', 120, 12, 'mau xam', 'chay tot')

delimiter //
create procedure deleteProductById (id int)
begin
	delete from product p where p.id = id; 
end //
delimiter ;

call deleteProductById (9);
