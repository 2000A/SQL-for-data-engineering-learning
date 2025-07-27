/* SELF JOIN*/

CREATE TABLE emp(
	emp_id SERIAL PRIMARY KEY,
	emp_name VARCHAR(50),
	emp_manager_id INTEGER
);

INSERT INTO emp (emp_name, emp_manager_id)
VALUES ('John',NULL),
		('Jane',1),
		('Bob',2),
		('Alice',2),
		('Mike',3);

SELECT * FROM emp;

SELECT 
e1.emp_id,
e1.emp_name as manager,
e2.emp_name
FROM emp e1
LEFT JOIN emp e2 ON e1.emp_id = e2.emp_manager_id;
 

CREATE TABLE ecommerce (
	order_id SERIAL PRIMARY KEY,
	user_id INTEGER,
	product VARCHAR(50)
);


INSERT INTO ecommerce( user_id, product)
VALUES (1,'Shoes'),
		(2,'T-Shirt'),
		(3,'Jeans'),
		(1,'Socks'),
		(2,'Pants'),
		(1,'Hat');


SELECT * FROM ecommerce;

SELECT * FROM ecommerce e1
LEFT JOIN ecommerce e2 ON e1.user_id = e2.user_id AND e1.order_id <> e2.order_id;


CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	student_name VARCHAR(50),
	student_class VARCHAR(50),
	student_teacher VARCHAR(50)
);

INSERT INTO student (student_name, student_class, student_teacher)
VALUES ('john','10A', 'Mr Smith'),
		('jane','10B', 'Mrs. Jones'),
		('bob','10A','Mr Smith'),
		('Alice','10B', 'Mrs. Jones'),
		('Mike', '10C', 'Mr. Brown');


SELECT * FROM student;

SELECT s1.student_name, s2.student_name, s1.student_teacher
FROM student s1
LEFT JOIN student s2 ON s1.student_teacher = s2.student_teacher  AND s1.student_id <> s2.student_id;





