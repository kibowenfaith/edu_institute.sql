CREATE DATABASE IF NOT EXISTS edu_institute;

-- Within edu_institute, create a table named students
USE edu_institute;

CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    enrollment_date DATE,
    program VARCHAR(50)
);

-- Inserting records into the students table
INSERT INTO students (student_id, name, age, gender, enrollment_date, program) 
VALUES

(1, 'John Doe', 22, 'M', '2023-04-01', 'Data Science'),
(2, 'Jane Smith', 20, 'F', '2023-05-15', 'Computer Science'),
(3, 'Alice Johnson', 25, 'F', '2023-06-10', 'Data Science'),
(4, 'Bob Brown', 23, 'M', '2023-07-20', 'Computer Engineering'),
(5, 'Charlie Davis', 24, 'M', '2023-08-15', 'Data Science');
     
 -- Write a query to select all columns for all students in the "Data Science"
SELECT *
FROM students
WHERE program = 'Data Science';

-- Write a query to find the total number of students and display it as Total Students
SELECT COUNT(*) AS "Total Students"
FROM students;

-- Use an appropriate function to display the current date in a column named
-- Today's Date.
SELECT CURDATE() AS "Today's Date";

-- Write a query to select the student names and their enrolment dates, but
-- display the name column in uppercase
SELECT UPPER(name) AS uppercase_name, enrollment_date
FROM students;

-- Write a query to count the number of students in each program and display the
-- results in descending order of count. Name the count column as Number of
-- Students.
SELECT program, COUNT(*) AS "Number of Students"
FROM students
GROUP BY program
ORDER BY COUNT(*) DESC;

-- Write a query to find the youngest student's name and age
SELECT name, age
FROM students
WHERE age = (SELECT MIN(age) FROM students);
