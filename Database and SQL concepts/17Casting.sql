/* Casting into Different Formats*/


CREATE TABLE student1 (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	age INTEGER,
	marks FLOAT(2)
);

INSERT INTO student1 (name, age, marks) VALUES
('John', 20, 78.5),
('Jane', 22, 89.2),
('Peter', 21, 92.3),
('Mary', 23, 86.7),
('David', 19, 73.9);

SELECT * FROM student1;

SELECT age, marks::int FROM student1;

SELECT cast(age as text), cast(marks as numeric) FROM student1;


SELECT SUM(age) FROM student1;


SELECT '2022-01-01'::date;

SELECT extract(day from '2022-01-01')

SELECT extract(day from cast('2022-01-01' as date));


SELECT cast('2022-01-01 12:30:00' as timestamp);


SELECT cast('2022-01-01 12:45:00' as date);


SELECT cast('2022-01-01 12:45:00' as time);












