create database student;
use student;

-- Creation Of Tables --
-- 1. Students table
create table Students (
    student_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    dob date,
    gender varchar(10),
    department varchar(50)
);
 
-- 2. Courses table
create table Courses (
    course_id int primary key,
    course_name varchar(50),
    credits int
);

-- 3. Enrollments table
create table Enrollments (
    enroll_id int primary key,
    student_id int,
    course_id int,
    semester varchar(30),
    foreign key (student_id) references Students(student_id),
    foreign key (course_id) references Courses(course_id)
);

-- 4. Grades table
create table Grades (
    grade_id int primary key,
    enrollment_id int,
    grade varchar(10),
    foreign key (enrollment_id) references Enrollments(enroll_id)
);

-- =============================
-- Sample Data (20 rows per table)
-- =============================

INSERT INTO Students VALUES
(1,'Amit','Sharma','2000-05-12','Male','Computer Science'),
(2,'Neha','Verma','2001-03-18','Female','Information Technology'),
(3,'Rahul','Gupta','1999-11-22','Male','Electronics'),
(4,'Priya','Singh','2000-07-30','Female','Computer Science'),
(5,'Ankit','Yadav','2001-01-15','Male','Mechanical'),
(6,'Kajal','Mehta','2000-09-10','Female','Civil'),
(7,'Rohit','Kumar','1999-12-05','Male','Computer Science'),
(8,'Pooja','Rani','2001-06-19','Female','IT'),
(9,'Suresh','Patel','2000-02-28','Male','Electronics'),
(10,'Nisha','Agarwal','1999-08-14','Female','Computer Science'),
(11,'Vikas','Jain','2000-10-21','Male','Mechanical'),
(12,'Sneha','Kapoor','2001-04-11','Female','IT'),
(13,'Arjun','Malik','1999-03-09','Male','Civil'),
(14,'Simran','Kaur','2000-06-25','Female','Computer Science'),
(15,'Mohit','Bansal','2001-12-01','Male','Electronics'),
(16,'Riya','Chopra','2000-01-19','Female','IT'),
(17,'Deepak','Saini','1999-09-30','Male','Mechanical'),
(18,'Isha','Gupta','2001-05-07','Female','Civil'),
(19,'Karan','Khanna','2000-11-16','Male','Computer Science'),
(20,'Aarti','Joshi','1999-02-08','Female','IT');

INSERT INTO Courses VALUES
(1,'Database Management Systems',4),
(2,'Operating Systems',4),
(3,'Computer Networks',3),
(4,'Data Structures',4),
(5,'Software Engineering',3),
(6,'Python Programming',4),
(7,'Java Programming',4),
(8,'Web Development',3),
(9,'Machine Learning',4),
(10,'Data Analytics',4),
(11,'Artificial Intelligence',4),
(12,'Cloud Computing',3),
(13,'Cyber Security',3),
(14,'Big Data',4),
(15,'Digital Electronics',3),
(16,'Microprocessors',3),
(17,'Engineering Mathematics',4),
(18,'Statistics',3),
(19,'Business Analytics',3),
(20,'Project Management',3);

INSERT INTO Enrollments VALUES
(1,1,1,'Semester 1'),
(2,2,2,'Semester 1'),
(3,3,3,'Semester 1'),
(4,4,4,'Semester 1'),
(5,5,5,'Semester 1'),
(6,6,6,'Semester 2'),
(7,7,7,'Semester 2'),
(8,8,8,'Semester 2'),
(9,9,9,'Semester 2'),
(10,10,10,'Semester 2'),
(11,11,11,'Semester 3'),
(12,12,12,'Semester 3'),
(13,13,13,'Semester 3'),
(14,14,14,'Semester 3'),
(15,15,15,'Semester 3'),
(16,16,16,'Semester 4'),
(17,17,17,'Semester 4'),
(18,18,18,'Semester 4'),
(19,19,19,'Semester 4'),
(20,20,20,'Semester 4');

INSERT INTO Grades VALUES
(1,1,'A'),
(2,2,'B'),
(3,3,'A'),
(4,4,'C'),
(5,5,'B'),
(6,6,'A'),
(7,7,'B'),
(8,8,'A'),
(9,9,'D'),
(10,10,'B'),
(11,11,'A'),
(12,12,'C'),
(13,13,'A'),
(14,14,'D'),
(15,15,'B'),
(16,16,'A'),
(17,17,'C'),
(18,18,'A'),
(19,19,'D'),
(20,20,'B');

-- Select all data from Students table
SELECT * FROM Students;

-- Select all data from Courses table
SELECT * FROM Courses;

-- Select all data from Enrollments table
SELECT * FROM Enrollments;

-- Select all data from Grades table
SELECT * FROM Grades;
