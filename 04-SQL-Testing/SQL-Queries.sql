-- ============================================================
-- QA ENGINEER INTERNSHIP PORTFOLIO
-- SQL / DATABASE TESTING QUERY LIBRARY
-- ============================================================
--
-- Purpose:
-- Queries used to validate data integrity, relationships,
-- business rules, and application data.
--
-- Database:
-- Practice SQLite Database
--
-- IMPORTANT:
-- These queries are for a practice database.
-- Do not execute UPDATE or DELETE statements against
-- production databases without explicit authorization.
-- ============================================================


-- ============================================================
-- 1. USER DATA VALIDATION
-- ============================================================

-- 1.1 Retrieve all users
SELECT *
FROM users;


-- 1.2 Retrieve selected user fields
SELECT id, username, email
FROM users;


-- 1.3 Find users with missing email
SELECT *
FROM users
WHERE email IS NULL;


-- 1.4 Find duplicate usernames
SELECT username, COUNT(*) AS duplicate_count
FROM users
GROUP BY username
HAVING COUNT(*) > 1;


-- 1.5 Count users
SELECT COUNT(*) AS user_count
FROM users;


-- ============================================================
-- 2. PRODUCT DATA VALIDATION
-- ============================================================

-- 2.1 Retrieve all products
SELECT *
FROM products;


-- 2.2 Retrieve product names and prices
SELECT name, price
FROM products;


-- 2.3 Find products with negative prices
SELECT *
FROM products
WHERE price < 0;


-- 2.4 Find products with missing names
SELECT *
FROM products
WHERE name IS NULL;


-- 2.5 Find products above a specified price
SELECT name, price
FROM products
WHERE price > 1000;


-- 2.6 Sort products from lowest to highest price
SELECT name, price
FROM products
ORDER BY price ASC;


-- 2.7 Sort products from highest to lowest price
SELECT name, price
FROM products
ORDER BY price DESC;


-- 2.8 Count products
SELECT COUNT(*) AS product_count
FROM products;


-- 2.9 Find minimum product price
SELECT MIN(price) AS minimum_price
FROM products;


-- 2.10 Find maximum product price
SELECT MAX(price) AS maximum_price
FROM products;


-- 2.11 Calculate average product price
SELECT AVG(price) AS average_price
FROM products;


-- 2.12 Calculate total product price
SELECT SUM(price) AS total_product_value
FROM products;


-- ============================================================
-- 3. PRODUCT CATEGORY VALIDATION
-- ============================================================

-- 3.1 Count products by category
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category;


-- 3.2 Find categories containing more than one product
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category
HAVING COUNT(*) > 1;


-- ============================================================
-- 4. ORDER VALIDATION
-- ============================================================

-- 4.1 Retrieve all orders
SELECT *
FROM orders;


-- 4.2 Find orders with negative totals
SELECT *
FROM orders
WHERE total < 0;


-- 4.3 Count orders
SELECT COUNT(*) AS order_count
FROM orders;


-- 4.4 Calculate total order value
SELECT SUM(total) AS total_order_value
FROM orders;


-- 4.5 Find the highest order value
SELECT MAX(total) AS highest_order_value
FROM orders;


-- ============================================================
-- 5. USER → ORDER RELATIONSHIP
-- ============================================================

-- 5.1 Display users and their orders
SELECT
    users.username,
    orders.id AS order_id,
    orders.total
FROM users
INNER JOIN orders
    ON users.id = orders.user_id;


-- 5.2 Find users who have not placed an order
SELECT
    users.id,
    users.username
FROM users
LEFT JOIN orders
    ON users.id = orders.user_id
WHERE orders.id IS NULL;


-- 5.3 Find orders without a valid user
SELECT orders.*
FROM orders
LEFT JOIN users
    ON orders.user_id = users.id
WHERE users.id IS NULL;


-- ============================================================
-- 6. ORDER → PRODUCT RELATIONSHIP
-- ============================================================

-- 6.1 Display order items with product information
SELECT
    order_items.order_id,
    products.name,
    order_items.quantity
FROM order_items
INNER JOIN products
    ON order_items.product_id = products.id;


-- 6.2 Find order items referencing a missing product
SELECT order_items.*
FROM order_items
LEFT JOIN products
    ON order_items.product_id = products.id
WHERE products.id IS NULL;


-- 6.3 Find order items with negative quantities
SELECT *
FROM order_items
WHERE quantity < 0;


-- 6.4 Find order items with zero quantity
SELECT *
FROM order_items
WHERE quantity = 0;


-- ============================================================
-- 7. THREE-TABLE QA VALIDATION
-- ============================================================

-- 7.1 Display user, order, product, and quantity
SELECT
    users.username,
    orders.id AS order_id,
    products.name AS product_name,
    order_items.quantity
FROM users
INNER JOIN orders
    ON users.id = orders.user_id
INNER JOIN order_items
    ON orders.id = order_items.order_id
INNER JOIN products
    ON order_items.product_id = products.id;


-- ============================================================
-- 8. DATA INTEGRITY CHECKS
-- ============================================================

-- 8.1 Check for negative product prices
SELECT COUNT(*) AS invalid_price_count
FROM products
WHERE price < 0;


-- 8.2 Check for missing product names
SELECT COUNT(*) AS missing_name_count
FROM products
WHERE name IS NULL;


-- 8.3 Check for duplicate usernames
SELECT username, COUNT(*) AS duplicate_count
FROM users
GROUP BY username
HAVING COUNT(*) > 1;


-- 8.4 Check for orphan orders
SELECT COUNT(*) AS orphan_order_count
FROM orders
LEFT JOIN users
    ON orders.user_id = users.id
WHERE users.id IS NULL;


-- 8.5 Check for orphan order items
SELECT COUNT(*) AS orphan_item_count
FROM order_items
LEFT JOIN products
    ON order_items.product_id = products.id
WHERE products.id IS NULL;


-- ============================================================
-- 9. BUSINESS RULE VALIDATION
-- ============================================================

-- 9.1 Requirement:
-- Product price must not be negative.
SELECT *
FROM products
WHERE price < 0;


-- 9.2 Requirement:
-- Order total must not be negative.
SELECT *
FROM orders
WHERE total < 0;


-- 9.3 Requirement:
-- Order item quantity must be positive.
SELECT *
FROM order_items
WHERE quantity <= 0;


-- ============================================================
-- 10. PRACTICE DATA MODIFICATION
-- ============================================================
--
-- These statements are examples only.
-- Execute them only against the local practice database.
--

-- 10.1 INSERT example
-- INSERT INTO products (name, price, category)
-- VALUES ('Test Keyboard', 1500, 'Electronics');


-- 10.2 UPDATE example
-- UPDATE products
-- SET price = 1600
-- WHERE name = 'Test Keyboard';


-- 10.3 DELETE example
-- DELETE FROM products
-- WHERE name = 'Test Keyboard';


-- ============================================================
-- END OF SQL QUERY LIBRARY
-- ============================================================
