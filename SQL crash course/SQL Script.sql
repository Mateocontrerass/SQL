
-- Combine columns across databases
/*
use sql_store;
select * 
from order_items oi 
join sql_inventory.products p 
ON oi.product_id=p.product_id
*/

-- Join a table to itself
/*
USE sql_hr;

SELECT *
FROM employees e
JOIN employees m -- looking for the manager
ON e.reports_to=m.employee_id
*/

-- simple query
/*
select e.employee_id, e.first_name, m.first_name AS Manager_name
FROM employees e
JOIN employees m -- looking for the manager
ON e.reports_to=m.employee_id
*/

-- join more than two tables

/*
use sql_store;

select o.order_id, o.order_date, c.first_name, c.last_name, os.name
FROM orders o 
INNER JOIN customers c
ON o.customer_id=c.customer_id
INNER JOIN order_statuses os
ON o.status= os.order_status_id

*/

-- Exercise

/*
use sql_invoicing;

select c.name, pm.name, p.amount, p.date, p.invoice_id
from clients c
inner join payments p 
ON c.client_id=p.client_id
inner join payment_methods pm
on p.payment_method=pm.payment_method_id 
*/

-- Compound join
/*
use sql_store;

select * 
from order_items oi
inner join order_item_notes oin
on oi.order_id = oin.order_Id
and oi.product_id = oin.product_id
*/

-- Outer joins

select p.product_id, p.name, oi.quantity
from products p
left join order_items oi
on p.product_id = oi.product_id