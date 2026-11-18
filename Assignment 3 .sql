
-- Assignment 3: Selecting Columns and Rows with WHERE

USE College;

-- Select specific columns
SELECT name, marks
FROM Students;

-- Select students having marks greater than 80
SELECT *
FROM Students
WHERE marks > 80;

-- Select students from Bareilly
SELECT name, city
FROM Students
WHERE city = 'Bareilly';



--Query: SELECT name, marks FROM Students;
--name	marks
--Rahul	85
--Aman	75
--Priya	90
--Rohit	65
--Neha	80

--Output 2: Using WHERE (marks greater than 80)
--id	name	age	city	marks
--1	Rahul	20	Bareilly	85
--3	Priya	20	Delhi	90

--Output 3: Students from Bareilly
--name	city
--Rahul	Bareilly
--Rohit	Bareilly
