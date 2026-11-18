
USE College;

-- Reset student records
DELETE FROM StudentDetails;

INSERT INTO StudentDetails VALUES
(101, 'Rahul', 1),
(102, 'Aman', 2),
(103, 'Priya', 1),
(104, 'Neha', 3),
(105, 'Rohit', NULL);

-- Add one department with no student
INSERT IGNORE INTO Departments VALUES
(4, 'Electrical');

-- 1. LEFT JOIN
SELECT
    StudentDetails.student_id,
    StudentDetails.student_name,
    Departments.dept_name
FROM StudentDetails
LEFT JOIN Departments
ON StudentDetails.dept_id = Departments.dept_id;

-- 2. RIGHT JOIN
SELECT
    StudentDetails.student_id,
    StudentDetails.student_name,
    Departments.dept_name
FROM StudentDetails
RIGHT JOIN Departments
ON StudentDetails.dept_id = Departments.dept_id;





--Expected Output
--1. LEFT JOIN

--student_id	student_name	dept_name
--101	Rahul	Computer Science
--102	Aman	Mechanical
--103	Priya	Computer Science
--104	Neha	Civil
--105	Rohit	NULL

--2. RIGHT JOIN

--student_id	student_name	dept_name
--101	Rahul	Computer Science
--103	Priya	Computer Science
--102	Aman	Mechanical
--104	Neha	Civil
--NULL	NULL	Electrical
