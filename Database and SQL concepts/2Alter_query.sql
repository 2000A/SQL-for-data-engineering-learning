CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	email VARCHAR(50),
	age INTEGER
);

INSERT INTO users (name,email,age)
VALUES ('John Doe','john@example.com',25),
		('Jane Doe','jane@example.com',30),
		('Bob Smith','bob@example.com',40);

SELECT * FROM users;

/*Altering a users table's column name*/

ALTER TABLE users RENAME COLUMN email TO email_to;

ALTER TABLE users ADD COLUMN phone VARCHAR(20)

INSERT INTO users (name,email_to,age,phone)
VALUES ('John Doe','john@example.com',25,8374627261),
		('Jane Doe','jane@example.com',30,963527722),
		('Bob Smith','bob@example.com',40,384736273);

/*Modifiying an existing column's data type*/

ALTER TABLE users ALTER COLUMN age TYPE SMALLINT;


/*QUESTIONS*/
/*Q1. What is the sql query to change the name of the email colum to user_email in the users table?*/
ALTER TABLE users RENAME COLUMN email_to TO users_email;

/*Q2. What is the sql query to add a new colun named phone of ata type VARCHAR(20) to the users tabe?*/
ALTER TABLE users ADD COLUMN adhaar_no VARCHAR(20);

/*Q3. What is the sql query to delete the phone column fro the users table?*/
ALTER TABLE users DROP COLUMN phone;





