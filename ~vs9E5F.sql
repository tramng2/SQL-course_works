-- 1.1
SELECT * FROM Campus
-- 1.2
SELECT city, campus_name FROM Campus ORDER BY campus_name ASC
-- 1.3
SELECT description, decision_maker FROM SanctionType ORDER BY sanction_code ASC
-- 1.4
SELECT description FROM MisconductType ORDER BY description ASC
-- 1.5
SELECT surname, first_name, teacher_number FROM Teacher ORDER BY surname ASC

SELECT surname, first_name, teacher_number FROM Teacher ORDER BY first_name ASC

SELECT surname, first_name, teacher_number FROM Teacher ORDER BY
teacher_number ASC

-- 1.6

SELECT student_number, surname, first_name, birth_date, gender FROM Student ORDER BY
student_number ASC

-- 1.7 
SELECT salary, surname, first_name, teacher_number FROM Teacher WHERE salary > 16000

-- 1.8
SELECT first_name, surname, teacher_number FROM Teacher WHERE first_name = 'Veera'

-- 1.9
SELECT student_number, course_code, instance_number, grade, examiner FROM CourseGrade WHERE examiner = 'h784'

-- 1.10
SELECT course_code, instance_number, start_date, end_date FROM CourseInstance WHERE (start_date >= '2007-01-01' AND end_date <= '2007-12-31') 
 
-- 1.11
SELECT gender, birth_date, surname, first_name FROM Student WHERE surname LIKE '[A-K]%'
ORDER BY gender DESC, birth_date ASC 