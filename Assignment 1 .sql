CREATE DATABASE College;
USE College;

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);

INSERT INTO Students VALUES
(1, 'Rahul', 20, 'Bareilly', 85),
(2, 'Aman', 21, 'Lucknow', 75),
(3, 'Priya', 20, 'Delhi', 90);

SELECT * FROM Students;


--Output:
--Students Table
--3 Rows

--id	name	age	city	marks
--1	Rahul	20	Bareilly	85
--2	Aman	21	Lucknow	75
--3	Priya	20	Delhi	90
