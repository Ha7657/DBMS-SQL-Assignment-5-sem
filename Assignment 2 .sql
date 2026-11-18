
-- Assignment 2: Updating and Deleting Rows

USE College;

-- Update marks of Rahul
UPDATE Students
SET marks = 95
WHERE id = 1;

-- Display updated record
SELECT * FROM Students
WHERE id = 1;

-- Delete Neha's record
DELETE FROM Students
WHERE id = 5;

-- Display all remaining records
SELECT * FROM Students;


--Students Table
--4 Rows

--id	name	age	city	marks
--1	Rahul	20	Bareilly	95
--2	Aman	21	Lucknow	75
--3	Priya	20	Delhi	90
--4	Rohit	22	Bareilly	65
