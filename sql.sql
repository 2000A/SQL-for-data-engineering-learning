CREATE TABLE sales (
	id int,
	sales_date date,
	product varchar(255),
	quantity int,
	revenue decimal(10,2)
)

INSERT INTO sales (id, sales_date, product, quantity, revenue)
VALUES (13,'2021-01-14', 'Product B',23,234.00);

SELECT * FROM sales;

SELECT * FROM sales WHERE product = 'Product B';