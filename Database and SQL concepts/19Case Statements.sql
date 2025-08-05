/*CASE Statement*/

CREATE TABLE employees4 (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	age INTEGER,
	salary NUMERIC,
	position VARCHAR(50)
);


INSERT INTO employees4 (name, age, salary, position) VALUES
	('John Doe', 25, 2500, 'Developer'),
	('Jane Smith', 30, 3500, 'Manager'),
	('Bob Johnson', 45, 5000, 'Director'),
	('Mike Brown', 22, 2000, 'Intern');


SELECT * FROM employees4;

SELECT
name,
salary,
CASE WHEN salary < 3000 THEN 'low'
WHEN salary BETWEEN 3000 AND 4000 THEN 'medium'
ELSE 'high'
END AS salary_category

FROM employees4;


SELECT
CASE WHEN salary < 3000 THEN 'low'
WHEN salary BETWEEN 3000 AND 4000 THEN 'medium'
ELSE 'high'
END AS salary_category,
count(*)
FROM employees4
GROUP BY salary_category;



SELECT 
name,
age,
salary,
CASE WHEN age < 25 AND salary < 2500 THEN 'Junior Developer'
WHEN age BETWEEN 25 AND 35 AND salary BETWEEN 2500 AND 3500 THEN 'Developer'
WHEN age > 35 AND salary > 3500 THEN 'Senior Developer'
ELSE 'Other'
END AS positions
FROM employees4




















































