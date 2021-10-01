--1
SELECT course_code, COUNT(student_number) AS 'Number_of_participants' 
FROM CourseGrade 
GROUP BY course_code

--2
SELECT student_number, COUNT(grade) AS 'Number_of_grades' 
FROM CourseGrade 
GROUP BY student_number
ORDER BY Number_of_grades DESC, student_number ASC

--3a
SELECT student_number, AVG(grade) AS 'Average_grade' 
FROM CourseGrade 
GROUP BY student_number
ORDER BY student_number ASC

--3b
SELECT student_number, CAST(AVG(grade * 1.0 ) AS DECIMAL(3, 2)) AS 'Average_grade' 
FROM CourseGrade 
GROUP BY student_number
ORDER BY student_number ASC

--4
SELECT teacher_number, SUM(instance_number) AS 'Number of course instance' FROM CourseInstance
GROUP BY teacher_number
ORDER BY teacher_number ASC

--5
SELECT teacher_number, COUNT(course_code) AS 'Number of course instance' FROM CourseInstance
GROUP BY teacher_number
ORDER BY teacher_number ASC

--6
SELECT teacher_number, Number_of_course_instances FROM (
SELECT teacher_number, COUNT(course_code) AS 'Number_of_course_instances' FROM CourseInstance Group By teacher_number) as temp_table 
WHERE Number_of_course_instances > 1 ORDER BY teacher_number

--7
SELECT student_number, MIN(grade) AS 'Lowest_grade', MAX(grade) AS 'Highest_grade', CAST(AVG(grade * 1.0) AS decimal(3,2)) AS 'Average_grade'
FROM CourseGrade
GROUP BY student_number

--8
SELECT student_number, MIN(grade) AS 'Lowest_grade', MAX(grade) AS 'Highest_grade', CAST(AVG(grade * 1.0) AS decimal(3,2)) AS 'Average_grade'
FROM CourseGrade
GROUP BY student_number HAVING  CAST(AVG(grade * 1.0) AS decimal(3,2)) > 3

--9
SELECT course_code, participants, instance_number FROM CourseInstance
WHERE  participants > (SELECT AVG(participants) FROM  CourseInstance)
ORDER BY participants, course_code, instance_number ASC 

--10
SELECT surname, first_name, student_number FROM Student
WHERE student_number =(SELECT student_number FROM CourseGrade WHERE grade = 0)

--11
SELECT surname, first_name, teacher_number, salary FROM Teacher WHERE salary > (
SELECT SUM(salary) FROM Teacher WHERE campus_code = 'c222')

--12
SELECT course_code, course_name FROM Course
WHERE course_code IN (SELECT course_code FROM CourseGrade WHERE grade > 0 GROUP BY course_code )

--13
SELECT course_code, course_name FROM Course
WHERE course_code IN (SELECT course_code FROM CourseGrade WHERE grade =0  GROUP BY course_code)
ORDER BY course_code ASC

--14
SELECT teacher_number, surname, first_name FROM Teacher
WHERE teacher_number NOT IN (SELECT person_in_charge FROM Course)
ORDER BY teacher_number, surname, first_name ASC







