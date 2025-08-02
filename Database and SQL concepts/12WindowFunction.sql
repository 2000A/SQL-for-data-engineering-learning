/*Window function basics*/

CREATE TABLE sales2 (
	date DATE,
	salesperson VARCHAR(50),
	sales_amount INT
);

INSERT INTO sales2 (date, salesperson, sales_amount) VALUES
	('2022-01-01','Alice',1000),
	('2022-01-01','Bob',1500),
	('2022-01-02','Alice',2000),
	('2022-01-02','Bob',2500),
	('2022-01-03','Alice',3000),
	('2022-01-03','Bob',3500),
	('2022-01-04','Alice',4000),
	('2022-01-04','Bob',4500),
	('2022-01-05','Alice',5000),
	('2022-01-05','Bob',5500);


SELECT * FROM sales2;

--1. Calculate the running total of sales over time for each salesperson.


-- running total for alice example:
-- current + the next one + next one ....


SELECT salesperson, SUM(sales_amount) FROM sales2
GROUP BY salesperson;

SELECT 
date,
salesperson,
sales_amount,
SUM(sales_amount) OVER(PARTITION BY salesperson ORDER BY date ASC) as running_total
FROM sales2;






	