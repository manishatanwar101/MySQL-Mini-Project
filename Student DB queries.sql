use student ; # Before performing query we ensure that our database is connected
show tables; # ensuring tables names for use in query so that no error

-- List all students from computer science department
SELECT first_name, last_name, department FROM students;

-- Display all courses with credits
SELECT course_name, credits FROM courses;

-- Show total number of students in each department
SELECT department, COUNT(*) as total_students FROM students GROUP BY department;

-- Find all female students
SELECT * FROM students WHERE gender='Female';

-- List students born after 2000
SELECT * FROM students WHERE dob > '2000-01-01';

-- Display all enrollments for Semester 1
SELECT enroll_id, semester FROM enrollments WHERE semester='Semester 1';

-- Count students enrolled in each semester
SELECT semester, COUNT(*) FROM enrollments GROUP BY semester;

-- Show all students enrolled in any course
SELECT DISTINCT s.* 
FROM students s
JOIN enrollments e ON s.student_id = e.student_id;

-- Display all grades where grade is A
SELECT * FROM grades WHERE grade='A';

-- Count students who received grade D
SELECT grade, COUNT(*) 
FROM grades 
WHERE grade='D';

-- Display student name, course name, and semester
SELECT s.first_name, s.last_name, e.semester, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Department-wise total enrollments
SELECT s.department, COUNT(*)
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.department;

-- Course-wise student count
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name
HAVING COUNT(e.student_id) > 1;

-- Average credits of courses taken by students
SELECT s.student_id, AVG(c.credits) AS avg_credits
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
GROUP BY s.student_id;
