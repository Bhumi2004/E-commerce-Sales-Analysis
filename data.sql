-- categories
INSERT INTO categories (id, name) VALUES
(1,'Electronics'), (2,'Clothing'), (3,'Home');

-- products
INSERT INTO products (id,name,category_id,price,stock) VALUES
(1,'Smartphone',1,599.99,50),
(2,'Laptop',1,899.00,20),
(3,'T-Shirt',2,19.99,200),
(4,'Jeans',2,49.99,120),
(5,'Blender',3,79.50,40),
(6,'Coffee Maker',3,129.99,30);

-- customers
INSERT INTO customers (id,name,email,city,signup_date) VALUES
(1,'Alice','alice@example.com','Kolkata','2024-11-05'),
(2,'Bob','bob@example.com','Mumbai','2025-01-12'),
(3,'Carla','carla@example.com','Delhi','2025-03-02'),
(4,'David','david@example.com','Bengaluru','2025-06-20'),
(5,'Eve','eve@example.com','Chennai','2025-07-15');

-- orders
INSERT INTO orders (id,customer_id,order_date,status) VALUES
(1,1,'2025-06-10','completed'),
(2,2,'2025-06-15','completed'),
(3,1,'2025-07-02','completed'),
(4,3,'2025-07-20','completed'),
(5,4,'2025-08-02','completed'),
(6,5,'2025-08-28','completed'),
(7,2,'2025-09-01','completed'),
(8,1,'2025-09-05','completed');

-- order_items
INSERT INTO order_items (order_id,product_id,quantity,unit_price) VALUES
(1,1,1,599.99),
(1,3,2,19.99),
(2,2,1,899.00),
(3,3,3,19.99),
(3,4,1,49.99),
(4,5,1,79.50),
(5,6,1,129.99),
(6,3,5,19.99),
(7,1,1,599.99),
(7,4,2,49.99),
(8,2,1,899.00),
(8,5,1,79.50);
