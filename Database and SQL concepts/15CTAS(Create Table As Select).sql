-- CTAS (CREATE TABLE AS SELECT )

CREATE TABLE employees3 (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	department VARCHAR(50) NOT NULL,
	salary INTEGER NOT NULL
)

INSERT INTO employees3 (name, department, salary) VALUES
	('John Doe', 'Sales', 50000),
	('Jane Smith','Marketing', 60000),
	('Bob Johnson', 'Finance', 70000),
	('Karen Williams', 'Sales',55000),
	('Mike Johnson', 'Marketing', 65000),
	('Abhishek', 'Data Engineer', 750000);



--Using CTAS employees salary > 70000

CREATE TABLE high_paid_employees AS 
(SELECT id, name, department, salary
FROM employees3
WHERE salary > 70000);



SELECT * FROM high_paid_employees;

)

INSERT INTO employees3 (name, department, salary) VALUES
	('Sparrow', 'Sales', 50000),
	('Jack','Marketing', 60000),
	('Bob ', 'Finance', 70000),
	('KareKaro', 'Sales',55000),
	('xyz', 'Marketing', 65000),
	('Darshil', 'Data Engineer', 750000);

/*VIEWS runs dynamically in background like updates its table
when table is modified or updated etc, But CTAS is static 
it does not runs in background once its created it stays static*/
