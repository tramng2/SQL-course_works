--1
SELECT COUNT(*) FROM CourseGrade;

--2
SELECT SUM(grade) FROM CourseGrade;

--3
SELECT COUNT(salary) FROM Teacher WHERE salary > 16000;

--4
SELECT MAX(salary) as Max FROM Teacher;
SELECT MIN(salary) as Min FROM Teacher;
SELECT AVG(salary) as Average FROM Teacher;
SELECT SUM(salary) as Sum FROM Teacher;

--5
--a
SELECT AVG(grade * 1.0) as Average_a FROM CourseGrade;
--b
SELECT CAST(AVG(grade * 1.0) AS DECIMAL(3,2)) as Average_b FROM CourseGrade;
--c
SELECT CAST(AVG(grade * 1.0) AS DECIMAL(1,0)) as Correct_Average_c  FROM CourseGrade;

--6
SELECT COUNT(grade) as Count_grade_3 FROM CourseGrade WHERE grade =3;

--7
SELECT CAST(AVG(grade * 1.0) AS DECIMAL(3,2)) as Average_grade FROM CourseGrade WHERE student_number = 'o473';

--8
SELECT * FROM Student WHERE first_name LIKE 'K%'
SELECT COUNT(*) as StudenName_start_K FROM Student WHERE first_name LIKE 'K%'

--9
SELECT DISTINCT * FROM Teacher WHERE surname LIKE 'T%'
SELECT DISTINCT COUNT(*) as Teacher_start_T FROM Teacher WHERE surname LIKE 'T%'

--10
SELECT CONCAT(LOWER(first_name), LOWER(surname), '@takkula.fi') AS Default_Email FROM Student ORDER BY Default_Email ASC

--11
SELECT MONTH(birth_date) as birth_month, surname, first_name, student_number 
FROM Student ORDER BY birth_month, surname, first_name, student_number ASC

--12
SELECT COUNT(month_birth) from (SELECT MONTH(birth_date) as month_birth FROM Student) as temp_table 
WHERE month_birth=5;

--SELECT COUNT(MONTH(birth_date)) AS birth_month FROM Student;

--13
SELECT DATENAME(QUARTER, start_date) AS quarter, start_date, course_code 
FROM CourseInstance 
ORDER BY quarter, start_date,course_code ASC

--14
SELECT DATENAME(MONTH, birth_date) as Month, MONTH(birth_date) as Day, first_name, student_number
FROM Student ORDER BY Month, Day, first_name, student_number ASC

--15
SELECT (DATENAME(WEEKDAY, birth_date)) as weekday FROM Student
SELECT COUNT(weekday) FROM (SELECT (DATENAME(WEEKDAY, birth_date)) as weekday FROM Student) as temp_table 
WHERE weekday = 'Sunday'

--16
SELECT DATENAME(DAY, Current_day) as CurrentDate FROM (SELECT LEFT(SYSDATETIME(), 10) AS Current_day) as temp_table;
SELECT DATENAME(WEEKDAY, Current_day)  as WeekDay FROM (SELECT LEFT(SYSDATETIME(), 10) AS Current_day) as temp_table;

--17
SELECT course_code, instance_number, DATEDIFF(DAY, start_date, end_date) AS Course_length FROM CourseInstance 
ORDER BY Course_length, course_code, instance_number

--18
SELECT Age, surname, first_name, student_number FROM 
(SELECT surname, first_name, student_number, DATEDIFF(YEAR,birth_date, '2021-09-23') as Age 
FROM Student) as temp_table ORDER BY Age, surname, first_name, student_number ASC

--19
SELECT student_number, surname, first_name, email FROM Student WHERE CHARINDEX('@takkula.fi', email) = 0 
ORDER BY student_number ASC

--20
SELECT REPLACE(SUBSTRING(email, CHARINDEX('@', email),LEN(email)), '@','') AS DOMAIN FROM Student 

--21

