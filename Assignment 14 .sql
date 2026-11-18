
USE College;

-- Create an index on student name
CREATE INDEX idx_student_name
ON Students(name);

-- Search student using name
SELECT * FROM Students
WHERE name = 'Rahul';

-- Create an index on city
CREATE INDEX idx_student_city
ON Students(city);

-- Search students by city
SELECT * FROM Students
WHERE city = 'Bareilly';

-- Display indexes of Students table
SHOW INDEX FROM Students;




--Expected Output
--1. Search student by name
--id	name	age	city	marks
--1	Rahul	20	Bareilly	85

--2. Search students by city
--id	name	age	city	marks
--1	Rahul	20	Bareilly	85
4	Rohit	22	Bareilly	65
