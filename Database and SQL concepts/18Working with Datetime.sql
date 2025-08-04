/* WORKING WITH DATETIME*/

CREATE TABLE orders2 (
	id SERIAL PRIMARY KEY,
	order_date TIMESTAMP,
	customer_name VARCHAR(255),
	total_amount NUMERIC(10,2)
);

INSERT INTO orders2 (order_date, customer_name, total_amount) VALUES
	('2025-01-01 10:00:00', 'Abhishek Ram', 100.00),
	('2025-01-02 12:30:00', 'Darshil Parmar', 200.50),
	('2025-01-03 14:45:00', 'John Wick', 50.25),
	('2025-01-04 20:15:00', 'Jack Reacher', 75.00);

SELECT cast(order_date as date), order_date, cast(order_date as time) FROM orders2;


SELECT
	id,
	order_date,
	--EXTRACT(HOUR FROM cast(order_date as date)) AS order_hour, learning from error
	EXTRACT(MINUTE FROM order_date) AS order_minute,
	EXTRACT(DAY FROM order_date) AS order_day,
	EXTRACT(MONTH FROM order_date) AS order_month,
	EXTRACT(YEAR FROM order_date) AS order_year
FROM orders2;



SELECT
id,
order_date,
order_date AT TIME ZONE 'UTC' AT TIME ZONE 'America/Los_Angeles' AS order_date_pst
FROM orders2;




	