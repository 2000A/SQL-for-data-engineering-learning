/*Subqueries*/

CREATE TABLE customers_info (
	customer_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(50) NOT NULL,
	customer_email VARCHAR(50) NOT NULL
)

CREATE TABLE orders_info ( 
	order_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	order_date DATE NOT NULL,
	order_amount DECIMAL(10,2) NOT NULL
)


INSERT INTO customers_info (customer_name, customer_email) VALUES
	('John Doe', 'john@example.com'),
	('Jane Smith', 'janesmith@example.com'),
	('Bob Jonhson','bobjohnson@example.com');

	
INSERT INTO orders_info ( customer_id, order_date, order_amount) VALUES
	(1,'2021-01-01', 50.00),
	(1,'2021-01-01', 75.00),
	(2,'2021-01-15', 125.00),
	(3,'2021-01-01', 200.00);


-- Retrieve the names of customers who have placed orders with an 
--amount with an amount greater than $100.


SELECT customer_id FROM orders_info WHERE order_amount > 100;

SELECT customer_name FROM customers_info WHERE customer_id IN (SELECT customer_id FROM orders_info WHERE order_amount > 100);


-- Multiple Subqueries in SELECT statement

-- We want to retrieve the customer_name, email, and the total number of orders
-- they have placed.


SELECT customer_name, customer_email,
(SELECT COUNT(*) FROM orders_info WHERE orders_info.customer_id = customers_info.customer_id) as total_orders,
(SELECT SUM(order_amount) FROM orders_info WHERE orders_info.customer_id = customers_info.customer_id) as total_amount
FROM customers_info;


--Subquery in FROM statement

SELECT customer_name, AVG(order_amount) FROM 
(SELECT * 
FROM customers_info 
INNER JOIN orders_info ON customers_info.customer_id = orders_info.customer_id) as cust_order
GROUP BY customer_name
HAVING AVG(order_amount)>100;












