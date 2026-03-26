create view sales_view as
(
SELECT	o.order_id,
		o.order_date,
		c.customer_name,
		c.country,
		p.product_name,
		p.category,
		oi.quantity,
		oi.unit_price,
		(oi.quantity * oi.unit_price) AS revenue
from customers c
join orders o
on c.customer_id=o.customer_id
join order_items oi
on o.order_id=oi.order_id
join products p
on oi.product_id=p.product_id
);
