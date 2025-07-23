/* Database Constraints */
/* for accuracy and consistency */

CREATE TABLE employees(
	employee_id INTEGER,
	empolyee_name TEXT,
	empolyee_salary NUMERIC(10,2)
);

INSERT INTO employees (employee_id,empolyee_name,empolyee_salary)
VALUES (1,NULL,20000)

SELECT * FROM employees;

ALTER TABLE employees RENAME COLUMN empolyee_name TO employee_name;
ALTER TABLE employees RENAME COLUMN empolyee_salary TO employee_salary;

/*NOT NULL constraint*/

ALTER TABLE employees ALTER COLUMN employee_name SET NOT NULL;
ALTER TABLE employees ALTER COLUMN employee_salary SET NOT NULL;

/*Since we have null value table so we cannot alter the table now for that wwe need to update the NULL value with dummy value*/
UPDATE employees SET employee_name = 'NA' WHERE employee_name IS NULL;

INSERT INTO employees (employee_id,employee_name,employee_salary)
VALUES (1,'Darshil',36000)

/*UNIQUE Constraint*/

ALTER TABLE employees ADD CONSTRAINT unique_employee UNIQUE(employee_name);


/*CHECK constraint*/

ALTER TABLE employees ADD CONSTRAINT check_salary CHECK(employee_salary > 5000);

INSERT INTO employees (employee_id,employee_name,employee_salary)
VALUES (9,'steve',3600)

