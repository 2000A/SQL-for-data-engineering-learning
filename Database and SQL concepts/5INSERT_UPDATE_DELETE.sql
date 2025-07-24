/* litte bit more about INSERT,UPDATE,DELETE statements*/

CREATE TABLE employees_2(
	id SERIAL PRIMARY KEY,
	name TEXT,
	age INTEGER,
	salary NUMERIC
);

INSERT INTO employees_2 (salary,name,age)
VALUES (100000,'Ballerina',20)

SELECT * FROM employees_2 ORDER BY id ASC;


UPDATE employees_2
SET salary = 60000, age = 22
WHERE id = 4;

DELETE FROM employees_2
WHERE salary = 90000 AND age = 70;

/*Q1. Write an INSERT query to add a new employee Jane Smith with age 24 and salary 55000*/
INSERT INTO employees_2(name, age, salary)
VALUES ('Jane Smith', 24, 55000);

/*Write an UPDATE query to chane the name of the employee with id 1 to 'John Smith'*/
UPDATE employees_2
SET name = 'Dywane Johnson'
WHERE id = 1;

/*Write a DELETE query to remove all employees with a salary less than 40000 from the 'employees' table*/
DELETE FROM employees_2
WHERE salary < 60000;







