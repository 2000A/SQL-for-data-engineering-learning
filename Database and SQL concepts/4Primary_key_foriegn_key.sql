/* PRIMARY KEY , FOREIGN KEY AND OTHER KEYS and these are parts of Constraints only*/
CREATE TABLE students(
	id int PRIMARY KEY,
	name varchar(50),
	age int,
	gender varchar(10)
);

INSERT INTO courses(id, name, duration)
VALUES (5,'Math',22);

INSERT INTO students(id,name,age,gender,course_id)
VALUES (1, 'darshil',25,'Male',5);



SELECT * FROM students;

CREATE TABLE courses(
	id int PRIMARY KEY,
	name varchar(50),
	duration int
);
/* One way to ALTER students table and add course_id as FOREIGN KEY*/
/*ALTER TABLE students ADD COLUMN course_id int;
ALTER TABLE students CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(id);*/

/*second way is to drop the students table and create new table with foreign key*/

DROP TABLE students;

CREATE TABLE students(
	id int PRIMARY KEY,
	name varchar(50),
	age int,
	gender varchar(10),
	course_id int,
	FOREIGN KEY (course_id) REFERENCES courses(id)
);

DELETE FROM students WHERE id = 2;
DELETE FROM courses WHERE id = 1;


SELECT * FROM students;