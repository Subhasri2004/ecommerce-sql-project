Insert customer
-----------------
INSERT INTO customers VALUES
(1,'Rahul Sharma','rahul@email.com','Delhi','India','2022-03-01'),
(2,'Priya Singh','priya@email.com','Mumbai','India','2022-06-10'),
(3,'John Smith','john@email.com','New York','USA','2021-09-15'),
(4,'Ankit Verma','ankit@email.com','Bangalore','India','2023-01-20'),
(5,'Sara Khan','sara@email.com','Dubai','UAE','2022-11-05');

Insert Products
----------------
INSERT INTO products VALUES
(1,'Laptop','Electronics',800),
(2,'Mobile','Electronics',500),
(3,'Shoes','Fashion',120),
(4,'Watch','Accessories',200),
(5,'Headphones','Electronics',150);

Insert Order
-------------
INSERT INTO orders VALUES
(101,1,'2023-01-10','Shipped'),
(102,2,'2023-01-15','Shipped'),
(103,3,'2023-02-01','Pending'),
(104,1,'2023-02-10','Shipped'),
(105,4,'2023-03-05','Cancelled');

Insert OrderItem
------------------
INSERT INTO order_items VALUES
(1,101,1,1,800),
(2,101,5,2,150),
(3,102,2,1,500),
(4,103,3,2,120),
(5,104,4,1,200),
(6,104,2,1,500),
(7,105,1,1,800);
