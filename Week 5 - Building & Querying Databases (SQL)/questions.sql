SELECT customer_id, CONCAT(first_name, ' ', last_name) AS full_name, date_of_birth FROM customers_tb;

SELECT COUNT(customer_id) AS "Number of customers" FROM customers_tb;

SELECT * FROM order_items_tb;
-- SELECT * FROM orders_tb;
-- SELECT * FROM categories_tb;
-- SELECT * FROM products_tb;
SELECT * FROM customers_tb;

-- questions
SELECT * FROM customers_tb;
SELECT total_amount, payment_method FROM orders_tb;
SELECT * FROM products_tb;

SELECT * FROM customers_tb WHERE gender = 'Female';


-- TODO ORDER STOCK
SELECT product_name, stock FROM products_tb left JOIN order_items_tb on products_tb.product_id = order_items_tb.product_id; ORDER BY stock;
SELECT * FROM orders_tb;
SELECT * FROM order_items_tb;
-- later add product name

SELECT o.order_id, SUM(oi.quantity) AS total_item FROM orders_tb o JOIN order_items_tb oi on o.order_id = oi.order_id 
GROUP BY o.order_id ORDER BY total_item DESC;








SELECT product_name, description, stock FROM products_tb
WHERE stock > 50
ORDER BY stock DESC;


SELECT customer_id, first_name, last_name,
( 	SELECT COUNT(o.order_id)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
) AS total_order
FROM customers_tb c
ORDER BY total_order DESC;


SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb)
AS overall_avg_subquery;

--- which customer placed orders greater than 1000usd


SELECT customer_id, first_name, last_name,
( 	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
	) AS total
FROM customers_tb c
ORDER BY total;


SELECT customer_id, first_name, last_name FROM customers_tb c
WHERE (
	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id)>1000;
SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb) AS overall_avg_subquery;




SELECT MAX(total_amount) AS max_amount FROM orders_tb;



SELECT city, count(city) FROM addresses_tb a
GROUP BY city
ORDER BY count(city) DESC;


SELECT a.city, count(c.customer_id) AS customer_count FROM customers_tb c
JOIN addresses_tb a on c.address_id = a.address_id
GROUP BY a.city
ORDER BY count(city) DESC;


-- SELECT p.product_id, p.product_name, (oi.quantity * oi.unit_price) AS total_revenue FROM products_tb p
-- JOIN order_items_tb oi on p.product_id = oi.product_id
-- ORDER BY p.product_id DESC;


SELECT customer_id, CONCAT(first_name, ' ', last_name) AS full_name, date_of_birth FROM customers_tb;

SELECT COUNT(customer_id) AS "Number of customers" FROM customers_tb;

SELECT * FROM order_items_tb;
-- SELECT * FROM orders_tb;
-- SELECT * FROM categories_tb;
-- SELECT * FROM products_tb;
SELECT * FROM customers_tb;

-- questions
SELECT * FROM customers_tb;
SELECT total_amount, payment_method FROM orders_tb;
SELECT * FROM products_tb;

SELECT * FROM customers_tb WHERE gender = 'Female';


-- TODO ORDER STOCK
SELECT product_name, stock FROM products_tb left JOIN order_items_tb on products_tb.product_id = order_items_tb.product_id; ORDER BY stock;
SELECT * FROM orders_tb;
SELECT * FROM order_items_tb;
-- later add product name

SELECT o.order_id, SUM(oi.quantity) AS total_item FROM orders_tb o JOIN order_items_tb oi on o.order_id = oi.order_id 
GROUP BY o.order_id ORDER BY total_item DESC;








SELECT product_name, description, stock FROM products_tb
WHERE stock > 50
ORDER BY stock DESC;


SELECT customer_id, first_name, last_name,
( 	SELECT COUNT(o.order_id)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
) AS total_order
FROM customers_tb c
ORDER BY total_order DESC;


SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb)
AS overall_avg_subquery;

--- which customer placed orders greater than 1000usd


SELECT customer_id, first_name, last_name,
( 	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
	) AS total
FROM customers_tb c;



SELECT customer_id, first_name, last_name FROM customers_tb c
WHERE (
	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id)>1000;
SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb) AS overall_avg_subquery;




SELECT MAX(total_amount) AS max_amount FROM orders_tb;



SELECT city, count(city) FROM addresses_tb a
GROUP BY city
ORDER BY count(city) DESC;


SELECT a.city, count(c.customer_id) AS customer_count FROM customers_tb c
JOIN addresses_tb a on c.address_id = a.address_id
GROUP BY a.city
ORDER BY count(city) DESC;


-- SELECT p.product_id, p.product_name, (oi.quantity * oi.unit_price) AS total_revenue FROM products_tb p
-- JOIN order_items_tb oi on p.product_id = oi.product_id
-- ORDER BY p.product_id DESC;








SELECT customer_id, CONCAT(first_name, ' ', last_name) AS full_name, date_of_birth FROM customers_tb;

SELECT COUNT(customer_id) AS "Number of customers" FROM customers_tb;

SELECT * FROM order_items_tb;
-- SELECT * FROM orders_tb;
-- SELECT * FROM categories_tb;
-- SELECT * FROM products_tb;
SELECT * FROM customers_tb;

-- questions
SELECT * FROM customers_tb;
SELECT total_amount, payment_method FROM orders_tb;
SELECT * FROM products_tb;

SELECT * FROM customers_tb WHERE gender = 'Female';


-- TODO ORDER STOCK
SELECT product_name, stock FROM products_tb left JOIN order_items_tb on products_tb.product_id = order_items_tb.product_id; ORDER BY stock;
SELECT * FROM orders_tb;
SELECT * FROM order_items_tb;
-- later add product name

SELECT o.order_id, SUM(oi.quantity) AS total_item FROM orders_tb o JOIN order_items_tb oi on o.order_id = oi.order_id 
GROUP BY o.order_id ORDER BY total_item DESC;








SELECT product_name, description, stock FROM products_tb
WHERE stock > 50
ORDER BY stock DESC;


SELECT customer_id, first_name, last_name,
( 	SELECT COUNT(o.order_id)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
) AS total_order
FROM customers_tb c
ORDER BY total_order DESC;


SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb)
AS overall_avg_subquery;

--- which customer placed orders greater than 1000usd


SELECT customer_id, first_name, last_name,
( 	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
	) AS total
FROM customers_tb c;



SELECT customer_id, first_name, last_name FROM customers_tb c
WHERE (
	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id)>1000;
SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb) AS overall_avg_subquery;




SELECT MAX(total_amount) AS max_amount FROM orders_tb;



SELECT city, count(city) FROM addresses_tb a
GROUP BY city
ORDER BY count(city) DESC;


SELECT a.city, count(c.customer_id) AS customer_count FROM customers_tb c
JOIN addresses_tb a on c.address_id = a.address_id
GROUP BY a.city
ORDER BY count(city) DESC;


-- SELECT p.product_id, p.product_name, (oi.quantity * oi.unit_price) AS total_revenue FROM products_tb p
-- JOIN order_items_tb oi on p.product_id = oi.product_id
-- ORDER BY p.product_id DESC;

SELECT p.product_name, 
sum(oi.quantity) as total_quantity, 
sum(oi.quantity * oi.unit_price) AS total_revenue, 
AVG(oi.quantity * oi.unit_price) AS avg_rev,
ROW_NUMBER() OVER (ORDER BY sum(oi.quantity * oi.unit_price) DESC) as total_rev_ranking
FROM products_tb p
JOIN order_items_tb oi on p.product_id = oi.product_id
GROUP BY p.product_name;

SELECT customer_id, CONCAT(first_name, ' ', last_name) AS full_name, date_of_birth FROM customers_tb;

SELECT COUNT(customer_id) AS "Number of customers" FROM customers_tb;

SELECT * FROM order_items_tb;
-- SELECT * FROM orders_tb;
-- SELECT * FROM categories_tb;
-- SELECT * FROM products_tb;
SELECT * FROM customers_tb;

-- questions
SELECT * FROM customers_tb;
SELECT total_amount, payment_method FROM orders_tb;
SELECT * FROM products_tb;

SELECT * FROM customers_tb WHERE gender = 'Female';


-- TODO ORDER STOCK
SELECT product_name, stock FROM products_tb left JOIN order_items_tb on products_tb.product_id = order_items_tb.product_id; ORDER BY stock;
SELECT * FROM orders_tb;
SELECT * FROM order_items_tb;
-- later add product name

SELECT o.order_id, SUM(oi.quantity) AS total_item FROM orders_tb o JOIN order_items_tb oi on o.order_id = oi.order_id 
GROUP BY o.order_id ORDER BY total_item DESC;








SELECT product_name, description, stock FROM products_tb
WHERE stock > 50
ORDER BY stock DESC;


SELECT customer_id, first_name, last_name,
( 	SELECT COUNT(o.order_id)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
) AS total_order
FROM customers_tb c
ORDER BY total_order DESC;


SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb)
AS overall_avg_subquery;

--- which customer placed orders greater than 1000usd


SELECT customer_id, first_name, last_name,
( 	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
	) AS total
FROM customers_tb c;



SELECT customer_id, first_name, last_name FROM customers_tb c
WHERE (
	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id)>1000;
SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb) AS overall_avg_subquery;




SELECT MAX(total_amount) AS max_amount FROM orders_tb;



SELECT city, count(city) FROM addresses_tb a
GROUP BY city
ORDER BY count(city) DESC;


SELECT a.city, count(c.customer_id) AS customer_count FROM customers_tb c
JOIN addresses_tb a on c.address_id = a.address_id
GROUP BY a.city
ORDER BY count(city) DESC;


-- SELECT p.product_id, p.product_name, (oi.quantity * oi.unit_price) AS total_revenue FROM products_tb p
-- JOIN order_items_tb oi on p.product_id = oi.product_id
-- ORDER BY p.product_id DESC;


SELECT customer_id, CONCAT(first_name, ' ', last_name) AS full_name, date_of_birth FROM customers_tb;

SELECT COUNT(customer_id) AS "Number of customers" FROM customers_tb;

SELECT * FROM order_items_tb;
-- SELECT * FROM orders_tb;
-- SELECT * FROM categories_tb;
-- SELECT * FROM products_tb;
SELECT * FROM customers_tb;

-- questions
SELECT * FROM customers_tb;
SELECT total_amount, payment_method FROM orders_tb;
SELECT * FROM products_tb;

SELECT * FROM customers_tb WHERE gender = 'Female';


-- TODO ORDER STOCK
SELECT product_name, stock FROM products_tb left JOIN order_items_tb on products_tb.product_id = order_items_tb.product_id; ORDER BY stock;
SELECT * FROM orders_tb;
SELECT * FROM order_items_tb;
-- later add product name

SELECT o.order_id, SUM(oi.quantity) AS total_item FROM orders_tb o JOIN order_items_tb oi on o.order_id = oi.order_id 
GROUP BY o.order_id ORDER BY total_item DESC;








SELECT product_name, description, stock FROM products_tb
WHERE stock > 50
ORDER BY stock DESC;


SELECT customer_id, first_name, last_name,
( 	SELECT COUNT(o.order_id)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
) AS total_order
FROM customers_tb c
ORDER BY total_order DESC;


SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb)
AS overall_avg_subquery;

--- which customer placed orders greater than 1000usd


SELECT customer_id, first_name, last_name,
( 	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
	) AS total
FROM customers_tb c;



SELECT customer_id, first_name, last_name FROM customers_tb c
WHERE (
	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id)>1000;
SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb) AS overall_avg_subquery;




SELECT MAX(total_amount) AS max_amount FROM orders_tb;



SELECT city, count(city) FROM addresses_tb a
GROUP BY city
ORDER BY count(city) DESC;


SELECT a.city, count(c.customer_id) AS customer_count FROM customers_tb c
JOIN addresses_tb a on c.address_id = a.address_id
GROUP BY a.city
ORDER BY count(city) DESC;


-- SELECT p.product_id, p.product_name, (oi.quantity * oi.unit_price) AS total_revenue FROM products_tb p
-- JOIN order_items_tb oi on p.product_id = oi.product_id
-- ORDER BY p.product_id DESC;








SELECT customer_id, CONCAT(first_name, ' ', last_name) AS full_name, date_of_birth FROM customers_tb;

SELECT COUNT(customer_id) AS "Number of customers" FROM customers_tb;

SELECT * FROM order_items_tb;
-- SELECT * FROM orders_tb;
-- SELECT * FROM categories_tb;
-- SELECT * FROM products_tb;
SELECT * FROM customers_tb;

-- questions
SELECT * FROM customers_tb;
SELECT total_amount, payment_method FROM orders_tb;
SELECT * FROM products_tb;

SELECT * FROM customers_tb WHERE gender = 'Female';


-- TODO ORDER STOCK
SELECT product_name, stock FROM products_tb left JOIN order_items_tb on products_tb.product_id = order_items_tb.product_id; ORDER BY stock;
SELECT * FROM orders_tb;
SELECT * FROM order_items_tb;
-- later add product name

SELECT o.order_id, SUM(oi.quantity) AS total_item FROM orders_tb o JOIN order_items_tb oi on o.order_id = oi.order_id 
GROUP BY o.order_id ORDER BY total_item DESC;








SELECT product_name, description, stock FROM products_tb
WHERE stock > 50
ORDER BY stock DESC;


SELECT customer_id, first_name, last_name,
( 	SELECT COUNT(o.order_id)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
) AS total_order
FROM customers_tb c
ORDER BY total_order DESC;


SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb)
AS overall_avg_subquery;

--- which customer placed orders greater than 1000usd


SELECT customer_id, first_name, last_name,
( 	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id
	) AS total
FROM customers_tb c;



SELECT customer_id, first_name, last_name FROM customers_tb c
WHERE (
	SELECT SUM(o.total_amount)
	FROM orders_tb o
	WHERE o.customer_id = c.customer_id)>1000;
SELECT average_salary FROM
(SELECT AVG(total_amount) AS average_salary FROM orders_tb) AS overall_avg_subquery;




SELECT MAX(total_amount) AS max_amount FROM orders_tb;



SELECT city, count(city) FROM addresses_tb a
GROUP BY city
ORDER BY count(city) DESC;


SELECT a.city, count(c.customer_id) AS customer_count FROM customers_tb c
JOIN addresses_tb a on c.address_id = a.address_id
GROUP BY a.city
ORDER BY count(city) DESC;


-- SELECT p.product_id, p.product_name, (oi.quantity * oi.unit_price) AS total_revenue FROM products_tb p
-- JOIN order_items_tb oi on p.product_id = oi.product_id
-- ORDER BY p.product_id DESC;

SELECT p.product_id, p.product_name, 
sum(oi.quantity * oi.unit_price) AS total_revenue, 
ROW_NUMBER() OVER (ORDER BY sum(oi.quantity * oi.unit_price) DESC) as rank
FROM products_tb p
JOIN order_items_tb oi on p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name;







-- ORDER BY p.product_id DESC;

























