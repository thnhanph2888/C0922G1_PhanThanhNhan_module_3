use classicmodels;

--  create view
create view customer_views  as 
select customerNumber, customerName, phone 
from customers ;
select * from customer_views;

-- 	update view when condition is satisfied
create or replace view customer_views as
select customerNumber, customerName, contactFirstName, contactLastName, phone
from customers
where city = 'Nantes';

-- delete view
drop view customer_views; 


