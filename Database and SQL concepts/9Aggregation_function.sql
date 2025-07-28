/*Aggregation functions*/

CREATE TABLE sales(
	id SERIAL PRIMARY KEY,
	product_name VARCHAR(50),
	sales_date DATE,
	sales_amount NUMERIC(10,2)
)

INSERT INTO sales (product_name, sales_date, sales_amount)
VALUES ('Product A','2022-01-01',100.50),
		('Product B','2022-01-01',150.50),
		('Product C','2022-01-02',75.00),
		('Product A','2022-01-02',50.75),
		('Product B','2022-01-03',200.00),
		('Product C','2022-01-03',125.50);

SELECT COUNT(*) FROM sales;

SELECT product_name, COUNT(*) FROM sales
GROUP BY product_name;


SELECT SUM(sales_amount) FROM sales;

SELECT product_name, SUM(sales_amount) FROM sales
GROUP BY product_name;


SELECT AVG(sales_amount) FROM sales;

SELECT product_name, AVG(sales_amount) FROM sales
GROUP BY product_name;


SELECT product_name, MIN(sales_amount) FROM sales
GROUP BY product_name;

SELECT product_name, MAX(sales_amount) FROM sales
GROUP BY product_name;

/*Q1. What is the total sales amount for each product?*/

SELECT * FROM sales;

SELECT product_name, SUM(sales_amount) FROM sales
GROUP BY product_name;

/*Question 3: What is the total number of sales for each product?*/
SELECT product_name, COUNT(*) AS total_sales
FROM sales
GROUP BY product_name;


/*Question 2: What is the average sales amount for each product?*/


/*Question 4: What is the maximum and minimum sales amount for each product?*/

/*Question 5: What is the total sales amount for each day?*/

SELECT sales_date, SUM(sales_amount) as total_sales
FROM sales
GROUP BY sales_date;


/*Question 6: What is the average sales amount for each day?*/

SELECT sales_date, AVG(sales_amount) as avg_sales
FROM sales
GROUP BY sales_date;

/*Question 7: What is the total number of sales for each day?*/
SELECT sales_date, COUNT(*) as total_sales
FROM sales
GROUP BY sales_date;

/*Question 8: What is the maximum and minimum sales amount for each day?*/
SELECT sales_date , Max(sales_amount) as max_sales, MIN(sales_amount) as min_sales
FROM sales
GROUP BY sales_date


/*Question 9: What is the total sales amount for each product and each day?*/


SELECT sales_date, product_name, SUM(sales_amount) as total_sales_amount
FROM sales
GROUP BY sales_date, product_name;

/*Question 10: What is the average sales amount for each product and each day?*/


SELECT sales_date, product_name, AVG(sales_amount) as avg_sales_amount
FROM sales
GROUP BY sales_date, product_name;

/* What is the total number of sales for each product and each day?*/

SELECT sales_date, product_name, COUNT(*) as total_sales_number
FROM sales
GROUP BY sales_date, product_name;
















