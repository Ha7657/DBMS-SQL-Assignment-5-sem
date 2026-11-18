
USE College;

-- Reset sample data
DELETE FROM Students;

INSERT INTO Students VALUES
(1, 'Rahul', 20, 'Bareilly', 85),
(2, 'Aman', 21, 'Lucknow', 75),
(3, 'Priya', 20, 'Delhi', 90),
(4, 'Rohit', 22, 'Bareilly', 65),
(5, 'Neha', 21, 'Lucknow', 80);

-- 1. Count students city-wise
SELECT city, COUNT(*) AS Total_Students
FROM Students
GROUP BY city;

-- 2. Calculate average marks city-wise
SELECT city, AVG(marks) AS Average_Marks
FROM Students
GROUP BY city;

-- 3. Display cities having more than one student
SELECT city, COUNT(*) AS Total_Students
FROM Students
GROUP BY city
HAVING COUNT(*) > 1;




--Expected Output
--1. Count students city-wise
--city	Total_Students
--Bareilly	2
--Lucknow	2
--Delhi	1

--2. Average marks city-wise
--city	Average_Marks
--Bareilly	75.0000
--Lucknow	77.5000
--Delhi	90.0000

--3. HAVING COUNT(*) greater than 1
--city	Total_Students
--Bareilly	2
--Lucknow	2
