use classicmodels;

-- tạo
delimiter //
create procedure findAllCustomers()
begin
    select * from customer;
end //
delimiter ;

-- gọi
call findAllCustomers;

-- xóa
drop procedure findAllCustomers;
