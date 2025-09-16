# E-commerce Sales Analysis (SQL Project)

## 📌 Overview
This project simulates a small **e-commerce database** using SQL.  
It covers **database design, sample data, analysis queries, and triggers**.

- Database: SQLite
- Features: Customers, Products, Orders, Order Items
- Queries: Top products, revenue analysis, monthly revenue, top customers, AOV
- Advanced: Views and stock management trigger

---

## 📂 Files
- `schema.sql` → database schema
- `data.sql` → sample dataset
- `queries.sql` → analysis queries
- `trigger.sql` → trigger to auto-update stock
- `screenshots/` → screenshots of query outputs

---

## ▶️ How to Run
```bash
sqlite3 ecommerce.db < schema.sql
sqlite3 ecommerce.db < data.sql
sqlite3 ecommerce.db < queries.sql



