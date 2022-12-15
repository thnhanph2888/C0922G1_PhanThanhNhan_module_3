CREATE DATABASE if not exists student_management;
USE student_management;
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