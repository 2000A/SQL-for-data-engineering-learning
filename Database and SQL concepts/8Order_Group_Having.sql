/*ORDERY BY , GROUP BY, HAVING */

CREATE TABLE customer_orders(
	order_id INT PRIMARY KEY,
	customer_name VARCHAR(50),
	order_date DATE,
	order_amount DECIMAL(10,2)
);

INSERT INTO customer_orders (order_id, customer_name, order_date, order_amount)
VALUES (1,'John', '2021-01-01', 100),
		(2,'Jane', '2021-01-02', 200),
		(3,'John', '2021-01-03', 50),
		(4,'Jane', '2021-01-04', 300),
		(5,'John', '2021-01-05', 150);

SELECT * FROM customer_orders
ORDER BY order_amount DESC;


SELECT * FROM customer_orders
ORDER BY order_id DESC;


SELECT customer_name, SUM(order_amount) AS total_amount FROM customer_orders
GROUP BY customer_name
ORDER BY SUM(order_amount) ASC;


SELECT customer_name, MAX(order_date), SUM(order_amount) as total_amount FROM customer_orders
GROUP BY customer_name
HAVING SUM(order_amount) > 300;












