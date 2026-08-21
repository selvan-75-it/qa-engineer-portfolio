-- ============================================================
-- QA INTERNSHIP PORTFOLIO
-- PRACTICE E-COMMERCE DATABASE
-- SQLite
-- ============================================================

PRAGMA foreign_keys = ON;

-- Remove existing tables so the script can be safely
-- re-created during local practice.
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;


-- ============================================================
-- USERS
-- ============================================================

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE
);


-- ============================================================
-- PRODUCTS
-- ============================================================

CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    category TEXT NOT NULL
);


-- ============================================================
-- ORDERS
-- ============================================================

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    total REAL NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


-- ============================================================
-- ORDER ITEMS
-- ============================================================

CREATE TABLE order_items (
    id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);


-- ============================================================
-- USER TEST DATA
-- ============================================================

INSERT INTO users (id, username, email)
VALUES
    (1, 'selvan', 'selvan@example.com'),
    (2, 'arun', 'arun@example.com'),
    (3, 'kumar', 'kumar@example.com');


-- ============================================================
-- PRODUCT TEST DATA
-- ============================================================

INSERT INTO products (id, name, price, category)
VALUES
    (101, 'Laptop', 50000, 'Electronics'),
    (102, 'Mouse', 1200, 'Electronics'),
    (103, 'Keyboard', 2500, 'Electronics'),
    (104, 'Office Chair', 8500, 'Furniture'),
    (105, 'Desk', 12000, 'Furniture'),
    (106, 'Headphones', 3000, 'Electronics');


-- ============================================================
-- ORDER TEST DATA
-- ============================================================

INSERT INTO orders (id, user_id, total)
VALUES
    (1001, 1, 51200),
    (1002, 2, 8500),
    (1003, 1, 3000);


-- ============================================================
-- ORDER ITEM TEST DATA
-- ============================================================

INSERT INTO order_items (id, order_id, product_id, quantity)
VALUES
    (1, 1001, 101, 1),
    (2, 1001, 102, 1),
    (3, 1002, 104, 1),
    (4, 1003, 106, 1);


-- ============================================================
-- BASIC VERIFICATION
-- ============================================================

SELECT *
FROM users;

SELECT *
FROM products;

SELECT *
FROM orders;

SELECT *
FROM order_items;

-- ============================================================
-- END OF PRACTICE DATABASE
-- ============================================================
