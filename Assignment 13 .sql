
USE College;

-- Create a view showing students with marks above 80
CREATE OR REPLACE VIEW Top_Students AS
SELECT id, name, city, marks
FROM Students
WHERE marks > 80;

-- Display all records from the view
SELECT * FROM Top_Students;

-- Create a view showing only student names and cities
CREATE OR REPLACE VIEW Student_Cities AS
SELECT name, city
FROM Students;

-- Display student names and cities
SELECT * FROM Student_Cities;



--Expected Output
--1. Top_Students View
--id	name	city	marks
--1	Rahul	Bareilly	85
--3	Priya	Delhi	90

--2. Student_Cities View
--name	city
--Rahul	Bareilly
--Aman	Lucknow
--Priya	Delhi
--Rohit	Bareilly
Neha	Lucknow
