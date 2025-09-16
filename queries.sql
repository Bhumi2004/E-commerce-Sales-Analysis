-- 1) Top-selling products (units sold)
SELECT p.name, SUM(oi.quantity) AS units_sold
FROM products p
JOIN order_items oi ON p.id = oi.product_id
GROUP BY p.name
ORDER BY units_sold DESC;

-- 2) Top revenue-generating products
SELECT p.name, SUM(oi.quantity * oi.unit_price) AS revenue
FROM products p
JOIN order_items oi ON p.id = oi.product_id
GROUP BY p.name
ORDER BY revenue DESC;

-- 3) Monthly revenue (YYYY-MM)
SELECT substr(o.order_date,1,7) AS month,
       SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
GROUP BY month
ORDER BY month;

-- 4) Top customers by spend
SELECT c.name, SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN order_items oi ON o.id = oi.order_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- 5) Average Order Value (AOV)
SELECT AVG(order_total) AS avg_order_value FROM (
  SELECT o.id, SUM(oi.quantity * oi.unit_price) AS order_total
  FROM orders o JOIN order_items oi ON o.id = oi.order_id
  GROUP BY o.id
);

-- 6) Category-wise revenue
SELECT cat.name AS category, SUM(oi.quantity * oi.unit_price) AS revenue
FROM categories cat
JOIN products p ON p.category_id = cat.id
JOIN order_items oi ON oi.product_id = p.id
GROUP BY cat.name
ORDER BY revenue DESC;

-- 7) Create a monthly revenue view
CREATE VIEW IF NOT EXISTS monthly_revenue AS
SELECT substr(o.order_date,1,7) AS month,
       SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
GROUP BY month;
