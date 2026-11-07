
USE colle;

UPDATE courses
SET CourseName = "DATASCIENCE"
WHERE CourseID = 104;

ALTER TABLE COURSES
ADD COLUMN StudentName VARCHAR(40);


SELECT * from courses;

UPDATE courses
SET StudentName = "kanhaiya"
WHERE CourseID = 101;

SELECT * from courses;

UPDATE courses
SET StudentName = "Ram"
WHERE CourseID = 102;

UPDATE Courses
SET StudentName = "pooja"
WHERE CourseID = 103;

UPDATE Courses 
SET StudentName = "rahul"
WHERE CourseID = 104;

SELECT * FROM Courses;

ALTER TABLE Courses
ADD COLUMN Duration VARCHAR(10);

UPDATE Courses
SET Duration = "Six Month"
WHERE CourseID = 101;

UPDATE Courses
SET Duration = "Six Month"
WHERE CourseID = 102;

UPDATE Courses
SET Duration = "One Month"
WHERE CourseID = 103;

UPDATE Courses
SET Duration = "Six Month"
WHERE CourseID = 104;

SELECT * FROM Courses;

INSERT INTO Courses value
(105 , "Java", "Rohit", "Six Month"),
(106 , "Full Stack", "Priya", "Four Month"),
(107 , "DegitalMarketing", "Karan", "Four Month"),
(108 , "AIML", "Pranav", "Six Month"),
(109 , "Excel", "Gaurav", "One Month");

SELECT * FROM Courses;


ALTER TABLE Courses
SET Stateus = "Pass"
WHERE CourseID = 101;

SELECT * FROM Courses;

ALTER TABLE Courses
ADD COLUMN Stateus VARCHAR(10);

SELECT *  FROM Courses;

UPDATE Courses
SET Stateus = "Pass"
WHERE CourseID = 101;

UPDATE Courses
SET Stateus = "Fail"
WHERE CourseID = 102;

UPDATE Courses
SET Stateus = "Pass"
WHERE CourseID = 103;

UPDATE Courses
SET Stateus = "Fail"
WHERE CourseID = 104;

UPDATE Courses
SET Stateus = "Pass"
WHERE CourseID = 105;

UPDATE Courses
SET Stateus = "Pass"
WHERE CourseID = 106;

UPDATE Courses
SET Stateus = "Fail"
WHERE CourseID = 107;

UPDATE Courses
SET Stateus = "Fail"
WHERE CourseID = 108;

UPDATE Courses
SET Stateus = "Pass"
WHERE CourseID = 109;

SELECT * FROM Courses;

ALTER TABLE Courses
ADD COLUMN Marks INT;

UPDATE Courses
SET Marks = 90
WHERE CourseID = 101;

UPDATE Courses
SET Marks = 20
WHERE CourseID = 102;

UPDATE Courses
SET Marks = 80
WHERE CourseID = 103;

UPDATE Courses
SET Marks = 50
WHERE CourseID = 104;

UPDATE Courses
SET Marks = 80
WHERE CourseID = 105;

UPDATE Courses
SET Marks = 70
WHERE CourseID = 106;

UPDATE Courses
SET Marks = 45
WHERE CourseID = 107;

UPDATE Courses
SET Marks = 40
WHERE CourseID = 108;

UPDATE Courses
SET Marks = 50
WHERE CourseID = 109;

SELECT * FROM Courses;

# AGGRIGATIVE FUNCTION

# Q1 Find the sum of marks from table courses

SELECT SUM(Marks) FROM Courses;

# Q2 Find The Min marks from table Courses.

SELECT MIN(Marks) FROM Courses;
 
# Q3 Find Max marks from table Courses.

SELECT MAX(Marks) FROM Courses;

#Q4 Find the average of marks from table Courses.

SELECT AVG(Marks) FROM Courses;

# Q5 count the total number of students from table Courses

SELECT COUNT(StudentName) FROM Courses;

#Q6 count all rows from table Courses

SELECT COUNT(*) FROM Courses; 

# STRING FUNCTION

#Q1 Show length of each student name from table Courses.

SELECT StudentName, LENGTH(StudentName) FROM Courses;

#Q2 reverse student name from table Courses.

SELECT StudentName, REVERSE(StudentName) FROM Courses;

#Q3 replace StudentName alter pooja to vaishnavi.

SELECT StudentName, REPLACE(StudentName, "pooja","Vaishnavi")
FROM Courses;

#Q4 show the length of each student name from courses.

SELECT StudentName, LENGTH(StudentName) FROM Courses;

#5 find the part of substrinfg in name from courses

SELECT StudentName, SUBSTR(StudentName, 1,3)
FROM Courses;

#Q6 find the posetion of iya in column StudentName from Courses.
SELECT StudentName, INSTR(StudentName,"iya")
FROM Courses;

SELECT * FROM Courses;

#OPERATORS

#Q! find the name of students whoes marks is 90 or stateus is pass.

SELECT StudentName FROM courses
WHERE Marks = 90 OR Stateus = "pass"; 

#Q2 find the students whoes course is sql or duration is 6 month.

SELECT StudentName FROM Courses
WHERE CourseName = "SQL" OR Duration = "Six Month";

#Q3 find the students who has the marks 90 or stateus pass.

SELECT StudentName,Stateus,Marks FROM Courses
WHERE Marks = 90 OR Stateus = "pass";

#Q4 select the student who had duration six month and status pass.

SELECT StudentName,Duration,Stateus FROM Courses
WHERE Duration = "Six Month" AND Stateus = "Pass";

# Q5 find the course which has the duration 6 month staterus pass and marks 90

SELECT CourseName,Duration,Stateus FROM Courses
WHERE Duration = "Six Month" AND Stateus = "pass";

#Q6 find the students whoes name start from letter "A".

SELECT * FROM Courses
WHERE StudentName LIKE "k%";

#Q7 find the student whoes name end feom a.

SELECT * FROM Courses
WHERE studentName LIKE "%a";

#Q8 find the student who has 3 letter and m letter on the third position.

SELECT * FROM Courses
WHERE StudentName LIKE "%__m";

#Q9 find the student whow has a 5 charecter and the posion of t is a last.

SELECT * FROM courses
WHERE StudentName LIKE "%____t";


#Q10 show students which has coursepython java sql

SELECT * FROM Courses
WHERE CourseName IN ("account","python");

#Q11 find the students whoes marks are between 80 and 90

SELECT * FROM Courses
WHERE Marks BETWEEN 80 AND 90;

#Q12 create the group of marks having the grether than 80.

SELECT StudentName,Marks  FROM Courses
GROUP BY Marks
HAVING Marks > 80;

#Q13 find the dublicate marks from table. 

SELECT Marks, COUNT(*)
FROM Courses 
GROUP BY Marks 
HAVING COUNT(*)>1;

#Q14 write a query to show marks ascending order.

SELECT * FROM Courses
ORDER BY Marks ASC;

#Q15 write a query to show marks descending order.

SELECT * FROM Courses
ORDER BY Marks DESC;

#Q16 write a query to show student name a to z.

SELECT * FROM Courses
ORDER BY StudentName ASC;

#Q17 write a query to show student name z to a.

SELECT * FROM Courses
ORDER BY StudentName DESC;

SELECT * FROM Courses;




