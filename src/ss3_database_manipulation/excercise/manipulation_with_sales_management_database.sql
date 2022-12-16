use sales_management;

insert into customer values 
	(1, "Minh Quan", 10),
	(2, "Ngoc Anh",20),
	(3, "Hong Ha", 50);

insert into this_order values 
	(1, 1, '2006-03-21', null),
	(2, 2, '2006-03-23', null),
	(3, 1, '2006-03-16', null);

insert into product values 
	(1, "may giat", 3),
	(2, "tu lanh" , 5),
	(3, "dieu hoa", 7),
	(4, "quat", 1),
	(5, "bep dien", 2);

insert into order_detail values (1, 1, 3),
	(1, 1, 3),
	(1, 3, 7),
	(1, 4, 2),
	(2, 1, 1),
	(3, 1, 8),
	(2, 5, 4),
	(2, 3, 3);

select o.order_id, o.order_date, o.order_total_price from this_order o;

select distinct c.customer_name from customer c, this_order o where c.customer_id = o.customer_id;
 
select distinct p.product_name from product p, order_detail de where p.product_id = de.product_id;

select distinct c.customer_name from customer c where c.customer_id not in (
    select distinct c.customer_id from customer c, this_order o where c.customer_id = o.customer_id
);

select distinct o.order_id, o.order_date, de.order_quality * p.product_price price  from this_order o join product p join order_detail de on o.order_id = de.order_id and de.product_id = p.product_id;
;
 