
USE College;

-- Reset sample data
DELETE FROM Students;

INSERT INTO Students VALUES
(1, 'Rahul', 20, 'Bareilly', 85),
(2, 'Aman', 21, 'Lucknow', 75),
(3, 'Priya', 20, 'Delhi', 90),
(4, 'Rohit', 22, 'Bareilly', 65),
(5, 'Neha', 21, 'Lucknow', 80);

-- 1. Names starting with R
SELECT * FROM Students
WHERE name LIKE 'R%';

-- 2. Names ending with a
SELECT * FROM Students
WHERE name LIKE '%a';

-- 3. Names containing 'oh'
SELECT * FROM Students
WHERE name LIKE '%oh%';

-- 4. Names having exactly 4 characters
SELECT * FROM Students
WHERE name LIKE '____';



--output
--1. Names starting with R
--id	name	city	marks
--1	Rahul	Bareilly	85
--4	Rohit	Bareilly	65

--2. Names ending with a
--id	name	city	marks
--3	Priya	Delhi	90
--5	Neha	Lucknow	80

--3. Names containing 'oh'
--id	name	city	marks
--4	Rohit	Bareilly	65

--4. Names having exactly 4 characters
--id	name	city	marks
--2	Aman	Lucknow	75
--5	Neha	Lucknow	80
