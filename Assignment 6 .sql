
USE College;

-- Reset sample data
DELETE FROM Students;

INSERT INTO Students VALUES
(1, 'Rahul', 20, 'Bareilly', 85),
(2, 'Aman', 21, 'Lucknow', 75),
(3, 'Priya', 20, 'Delhi', 90),
(4, 'Rohit', 22, 'Bareilly', 65),
(5, 'Neha', 21, 'Lucknow', 80);

-- 1. Sort students by marks in ascending order
SELECT * FROM Students
ORDER BY marks ASC;

-- 2. Sort students by marks in descending order
SELECT * FROM Students
ORDER BY marks DESC;

-- 3. Display unique cities
SELECT DISTINCT city FROM Students;

-- 4. Sort names alphabetically
SELECT name FROM Students
ORDER BY name ASC;





--Expected Output
--1. ORDER BY marks ASC
--id	name	marks
--4	Rohit	65
--2	Aman	75
--5	Neha	80
--1	Rahul	85
--3	Priya	90

--2. ORDER BY marks DESC
--id	name	marks
--3	Priya	90
--1	Rahul	85
--5	Neha	80
--2	Aman	75
--4	Rohit	65

--3. DISTINCT city
--city
--Bareilly
--Lucknow
--Delhi

--4. ORDER BY name ASC
--name
--Aman
--Neha
--Priya
--Rahul
--Rohit
