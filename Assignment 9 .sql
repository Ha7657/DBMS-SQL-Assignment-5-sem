
USE College;

-- Create Department table
CREATE TABLE IF NOT EXISTS Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert department records
INSERT IGNORE INTO Departments VALUES
(1, 'Computer Science'),
(2, 'Mechanical'),
(3, 'Civil');

-- Create StudentDetails table
CREATE TABLE IF NOT EXISTS StudentDetails (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT
);

-- Reset student records
DELETE FROM StudentDetails;

INSERT INTO StudentDetails VALUES
(101, 'Rahul', 1),
(102, 'Aman', 2),
(103, 'Priya', 1),
(104, 'Neha', 3);

-- INNER JOIN
SELECT
    StudentDetails.student_id,
    StudentDetails.student_name,
    Departments.dept_name
FROM StudentDetails
INNER JOIN Departments
ON StudentDetails.dept_id = Departments.dept_id;






--Output
--student_id	student_name	dept_name
--101	Rahul	Computer Science
--102	Aman	Mechanical
--103	Priya	Computer Science
--104	Neha	Civil

--Simple Explanation


--1. StudentDetails Table
--student_id	student_name	dept_id
--101	Rahul	1
--102	Aman	2
--103	Priya	1
--104	Neha	3

--2. Departments Table
--dept_id	dept_name
--1	Computer Science
--2	Mechanical
--3	Civil
