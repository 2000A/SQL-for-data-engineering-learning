--Views - Virtual tables

CREATE TABLE customers1 (
	customer_id INT PRIMARY KEY,
	first_name TEXT,
	last_name TEXT
);

CREATE TABLE orders1 (
	order_id INT PRIMARY KEY,
	customer_id INT,
	order_date DATE,
	item TEXT,
	quantity INT,
	price NUMERIC(10,2)
);

INSERT INTO customers1 (customer_id, first_name, last_name)
VALUES (101, 'John', 'Doe');

INSERT INTO orders1 (order_id, customer_id, order_date, item, quantity, price)
VALUES (1, 101, '2022-01-01', 'Shoes', 2, 50);


CREATE VIEW customer_order_view AS
SELECT c1.customer_id, first_name, last_name, order_date, item, quantity, price
FROM customers1 as c1
JOIN orders1 as o1 ON c1.customer_id = o1.customer_id;



SELECT * FROM customer_order_view;



INSERT INTO customers1 (customer_id, first_name, last_name)
VALUES (102, 'Abhishek', 'Ram');

INSERT INTO orders1 (order_id, customer_id, order_date, item, quantity, price)
VALUES (2, 102, '2022-01-02', 'Boxing Pad', 1, 100);

















