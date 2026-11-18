
USE College;

-- Reset sample data
DELETE FROM Students;

INSERT INTO Students VALUES
(1, 'Rahul', 20, 'Bareilly', 85),
(2, 'Aman', 21, 'Lucknow', 75),
(3, 'Priya', 20, 'Delhi', 90),
(4, 'Rohit', 22, 'Bareilly', 65),
(5, 'Neha', 21, 'Lucknow', 80);

-- 1. Count total students
SELECT COUNT(*) AS Total_Students
FROM Students;

-- 2. Calculate total marks
SELECT SUM(marks) AS Total_Marks
FROM Students;

-- 3. Calculate average marks
SELECT AVG(marks) AS Average_Marks
FROM Students;

-- 4. Find maximum marks
SELECT MAX(marks) AS Highest_Marks
FROM Students;

-- 5. Find minimum marks
SELECT MIN(marks) AS Lowest_Marks
FROM Students;





--Expected Output
--Function	Output
--COUNT(*)	5
--SUM(marks)	395
--AVG(marks)	79.0000
--MAX(marks)	90
--MIN(marks)	65
