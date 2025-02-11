DROP DATABASE DataEng_db;

DROP TABLE order_items_tb;
DROP TABLE orders_tb;
DROP TABLE categories_tb;
DROP TABLE products_tb;
DROP TABLE customers_tb;
DROP DATABASE IF EXISTS DataEng_db;

--Create a database for this programme
CREATE DATABASE DataEng_db;

-- USE DataEng_db;
-- 1. Create customers_tb table
CREATE TABLE customers_tb (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Male', 'Female', 'Other')),
    phone_number VARCHAR(15) UNIQUE NOT NULL,
    date_of_birth DATE NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    country VARCHAR(50) DEFAULT 'UK' -- Default country is UK as specified
);

-- 2. Create categories_tb table
CREATE TABLE categories_tb (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

-- 3. Create products_tb table
CREATE TABLE products_tb (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    stock INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories_tb (category_id)
);

-- 4. Create orders_tb table
CREATE TABLE orders_tb (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(50) NOT NULL,
    order_notes TEXT,
    total_amount DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers_tb (customer_id)
);


-- 5. Create order_items_tb table
CREATE TABLE order_items_tb (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders_tb (order_id),
    FOREIGN KEY (product_id) REFERENCES products_tb (product_id)
);


--Display Tables:
SELECT * FROM order_items_tb;
SELECT * FROM orders_tb;
SELECT * FROM categories_tb;
SELECT * FROM products_tb;
SELECT * FROM customers_tb;


CREATE TABLE addresses_tb(
address_id SERIAL PRIMARY KEY,
address VARCHAR(255),
city VARCHAR(100),
state VARCHAR(100),
zip_code VARCHAR(20),
country VARCHAR(100)
);

INSERT INTO addresses_tb (address, city, state, zip_code, country)
SELECT DISTINCT address, city, state, zip_code, country
from customers_tb;

SELECT * FROM addresses_tb

ALTER TABLE customers_tb 
ADD COLUMN address_id INT,
ADD CONSTRAINT fk_address
FOREIGN KEY (address_id) REFERENCES addresses_tb(address_id)

SELECT * FROM customers_tb

