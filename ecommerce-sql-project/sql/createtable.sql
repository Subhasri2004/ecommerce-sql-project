CUSTOMER TABLE
---------------

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
email VARCHAR(100),
city VARCHAR(50),
country VARCHAR(50),
signup_date DATE
);


PRODUCT TABLE
--------------

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2)
);

ORDER TABLE
------------
CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
status VARCHAR(20)
);

ORDER ITEMS TABLE
-------------------
CREATE TABLE order_items (
order_item_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
unit_price DECIMAL(10,2)
);