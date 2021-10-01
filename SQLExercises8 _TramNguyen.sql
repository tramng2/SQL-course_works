--1
SELECT surname FROM Student UNION SELECT surname FROM Teacher
SELECT surname FROM Student INTERSECT SELECT surname FROM Teacher
SELECT surname FROM Student EXCEPT SELECT surname FROM Teacher

--2
SELECT city FROM Student INTERSECT SELECT city FROM Campus

--3
SELECT city FROM Campus EXCEPT SELECT city FROM Student

--4
SELECT YEAR(birth_date) as Year_of_birth FROM Student 
UNION 
SELECT YEAR(birth_date) as Year_of_birth FROM Teacher 
ORDER BY Year_of_birth DESC

--5
SELECT YEAR(birth_date) as Year_of_birth FROM Student 
INTERSECT 
SELECT YEAR(birth_date) as Year_of_birth FROM Teacher 


--6
SELECT YEAR(birth_date) as Year_of_birth FROM Teacher 
EXCEPT 
SELECT YEAR(birth_date) as Year_of_birth FROM Student 

--7
SELECT YEAR(birth_date) as Year_of_birth FROM Student
UNION 
SELECT YEAR(birth_date) as Year_of_birth FROM Teacher
ORDER BY Year_of_birth DESC








