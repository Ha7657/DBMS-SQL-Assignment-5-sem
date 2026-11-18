
USE College;

-- Reset sample data
DELETE FROM Students;

INSERT INTO Students VALUES
(1, 'Rahul', 20, 'Bareilly', 85),
(2, 'Aman', 21, 'Lucknow', 75),
(3, 'Priya', 20, 'Delhi', 90),
(4, 'Rohit', 22, 'Bareilly', 65),
(5, 'Neha', 21, 'Lucknow', 80);

-- 1. Find students who scored more than average marks
SELECT name, marks
FROM Students
WHERE marks > (
    SELECT AVG(marks)
    FROM Students
);

-- 2. Find student with highest marks
SELECT name, marks
FROM Students
WHERE marks = (
    SELECT MAX(marks)
    FROM Students
);

-- 3. Find students from the same city as Rahul
SELECT name, city
FROM Students
WHERE city = (
    SELECT city
    FROM Students
    WHERE name = 'Rahul'
);





--Expected Output
--1. Students scoring above average

--Average marks = 79
--name	marks
--Rahul	85
--Priya	90
--Neha	80

--2. Student with highest marks
--name	marks
--Priya	90

--3. Students from Rahul's city
--name	city
--Rahul	Bareilly
--Rohit	Bareilly
