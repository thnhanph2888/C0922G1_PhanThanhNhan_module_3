create database if not exists student_management;
USE student_management;
create table class (
    id int primary key,
    name varchar(45)
);
create table Teacher(
id int primary key,
name varchar(45),
age int,
country varchar(45)
);