/*Stored Procedure*/

CREATE TABLE sales3 (
	id SERIAL PRIMARY KEY,
	product_name TEXT,
	category TEXT,
	price NUMERIC,
	quantity INTEGER,
	sale_date DATE
);


INSERT INTO sales3 (product_name, category, price, quantity, sale_date)
VALUES
	('iPad', 'Electronics', 799, 3, '2022-01-01'),
	('MacBook', 'Electronics', 1299, 2, '2022-01-02'),
	('iPhone', 'Electronics', 699, 5, '2022-01-03'),
	('Samsung TV', 'Electronics', 999, 1, '2022-01-04'),
	('Nike Shoes', 'Apparel', 99, 10, '2022-01-05');



SELECT * FROM sales3;

CREATE OR REPLACE FUNCTION get_average_price (category_name TEXT)
RETURNS NUMERIC
AS $$
BEGIN 
	RETURN(SELECT AVG(price) FROM sales3 WHERE category = category_name);
END;
$$ LANGUAGE plpgsql;



SELECT get_average_price('Electronics');

SELECT get_average_price('Apparel')


SELECT product_name, get_average_price(category) FROM sales3;


CREATE OR REPLACE FUNCTION get_total_sales(product_name TEXT, month TEXT)
RETURNS NUMERIC
AS $$
BEGIN
	RETURN (SELECT SUM(price * quantity) FROM sales3 WHERE product_name = product_name AND date_trunc('month',sale_date) = to_date(month,'Month'));
END;
$$ LANGUAGE plpgsql;

SELECT product_name, get_total_sales(product_name, 'January') as total_sales
FROM sales3
WHERE category = 'Electronics';

