create database if not exists sales_management;
use sales_management;
create table customer(
	customer_id int primary key,
    customer_name varchar(25),
	customer_age tinyint
);

create table this_order(
	order_id int primary key,
    customer_id int,
    foreign key (customer_id) references customer(customer_id),
    order_date date,
    order_total_price double
); 

create table product(
	product_id int primary key,
    product_name varchar(25),
    product_price int
);

create table order_detail(
	order_id int,
    product_id int,
    foreign key (order_id) references this_order(order_id),
    foreign key (product_id) references product(product_id),
    order_quality int
);