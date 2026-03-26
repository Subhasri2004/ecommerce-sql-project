Have to join all the tables for better business Analysis
----------------------------------------------------------
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
on oi.product_id=p.product_id;

--Total Revenue
select sum(revenue) as Total_Revenue from sales_view;

--Top Products
select product_name,
	   sum(revenue) TotalRevenuePer from sales_view
group by product_name
order by TotalRevenuePer DESC;

--Sales by Country
select country,
	   sum(revenue) as TotalRevenuePer 
from sales_view
group by country;

--Monthly Revenue
SELECT
MONTH(order_date) as OnlyMonth,
SUM(revenue) as RevenueTotal
FROM sales_view
GROUP BY MONTH(order_date);

Top Customer
-------------
select
	customer_name,
	sum(revenue) as SumRevenue 
from sales_view
group by customer_name
order by SumRevenue DESC;

Ranking Products
------------------
select product_name,
	   sum(revenue),
	   RANK() over (Order by sum(revenue) DESC) as productRank
from sales_view
group by product_name;
