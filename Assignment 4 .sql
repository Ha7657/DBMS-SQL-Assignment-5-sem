
USE College;

-- Reset sample data for consistent output
DELETE FROM Students;

INSERT INTO Students VALUES
(1, 'Rahul', 20, 'Bareilly', 85),
(2, 'Aman', 21, 'Lucknow', 75),
(3, 'Priya', 20, 'Delhi', 90),
(4, 'Rohit', 22, 'Bareilly', 65),
(5, 'Neha', 21, 'Lucknow', 80);

-- 1. AND: Both conditions must be true
SELECT * FROM Students
WHERE city = 'Bareilly' AND marks > 70;

-- 2. OR: At least one condition must be true
SELECT * FROM Students
WHERE city = 'Delhi' OR marks > 80;

-- 3. NOT: Excludes matching condition
SELECT * FROM Students
WHERE NOT city = 'Bareilly';



--Expected Output
--1. AND condition
--id	name	city	marks
--1	Rahul	Bareilly	85

--2. OR condition
--id	name	city	marks
--1	Rahul	Bareilly	85
--3	Priya	Delhi	90

--3. NOT condition
--id	name	city	marks
--2	Aman	Lucknow	75
--3	Priya	Delhi	90
--5	Neha	Lucknow	80
