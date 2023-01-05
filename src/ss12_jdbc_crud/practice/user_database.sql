create database user;
use user;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    country VARCHAR(120),
    PRIMARY KEY (id)
);

SELECT 
    *
FROM
    users;

insert into users(name, email, country) 
values ("Nhan", "nhan28@codegym.vn","vietnam"),
("Thanh", "thanh21@gmail.com","vietnam");

delimiter //
create procedure get_user_by_id(in user_id int) 
begin
   select users.name, users.email, users.country
   from users
   where users.id = user_id;
end //
delimiter ;

drop procedure get_user_by_id;

delimiter //
create procedure insert_user(
  in user_name varchar(50),
  in user_email varchar(50),
  in user_country varchar(50)
)
begin
     insert into users(name, email, country) 
     values(user_name, user_email, user_country);
end //
delimiter ;

CREATE TABLE Permission (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE User_permission (
    permission_id INT,
    user_id INT
);

insert into Permission(id, name) 
values (1, 'add'), 
     (2,'edit'),
     (3, 'delete'),
     (4, 'view');
delimiter //
create procedure get_all_user () 
begin
   select * from users;
end //
delimiter ; 

call edit_user_by_id(1,"rwer","dfg","dfg");

delimiter //
create procedure edit_user_by_id (id int, name varchar(120), email varchar(120), country varchar(120)) 
begin
   update users 
   set users.name = name,
	   users.email = email,
       users.country = country
	where users.id = id;
end //
delimiter ; 

delimiter //
create procedure delete_user_by_id (id int) 
begin
	 delete from users where users.id = id;
end //
delimiter ;

