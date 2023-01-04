create database user;
use user;

create table users(
id int not null auto_increment,
name varchar(120) not null,
email varchar(220) not null,
country varchar(120),
primary key (id)
);

select * from users;

insert into users(name, email, country) 
values ("Nhan", "nhan28@codegym.vn","vietnam"),
("Thanh", "thanh21@gmail.com","vietnam");
