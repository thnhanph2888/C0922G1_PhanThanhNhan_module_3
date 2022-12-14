-- tạo cơ sở dữ liệu
CREATE DATABASE if not exists student_management;
-- chọn cơ sở dữ liệu để thao tác
USE student_management;
-- tạo bảng
CREATE TABLE class (
    id int primary key,
    name varchar(45)
);

CREATE TABLE Teacher(
id int primary key,
name varchar(45),
age int,
country varchar(45)
);
-- xóa bảng
drop table teachnameer;
-- thêm 1 cột cho bảng
alter table class add column(email varchar(45));
--  xóa một 1 cột trong bảng qua tên
alter table class drop email;
-- thêm mới dữ liệu (row)
insert into class values (1,"first");
insert into class(id, name) values (0, "second");
insert into class(id, name) values (3, "third");
insert into class(id, name) values (4, "four");
insert into class(id, name) values (5, "five");
-- xóa dữ liệu thông qua id
delete from class where id = 2;
-- chỉnh sửa dữ liệu trong bảng
set SQL_SAFE_UPDATES = 0; 
-- SQL_SAFE_UPDATES ngăn chặn xóa dữ liệu thông qua cột không phải id để tránh mất dữ liệu quá lớns
set SQL_SAFE_UPDATES = 1;
update class set name = "update via name second" where name = "second";
update class set name = "new" where id = 3;
-- truy vấn bảng qua tên bảng
select * from class;
