
USE College;

-- Create table with constraints
CREATE TABLE IF NOT EXISTS Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    salary DECIMAL(10,2) DEFAULT 15000
);

-- Insert valid records
INSERT INTO Employee VALUES
(1, 'Rahul', 'rahul@gmail.com', 22, 25000),
(2, 'Aman', 'aman@gmail.com', 24, 30000);

-- Insert record using DEFAULT salary
INSERT INTO Employee (emp_id, emp_name, email, age)
VALUES (3, 'Priya', 'priya@gmail.com', 21);

-- Display records
SELECT * FROM Employee;




--Expected Output
--emp_id	emp_name	email	age	salary
--1	Rahul	rahul@gmail.com	22	25000.00
--2	Aman	aman@gmail.com	24	30000.00
--3	Priya	priya@gmail.com	21	15000.00
