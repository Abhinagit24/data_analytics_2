--Abhina Premachandran
--Data Analytics - Section 2
select *from student;
select *from student_marks;
-- students with the highest marks in Unit 4
select student_id,unit4
from student_marks
where unit4 > 95
order by unit4 desc;
-- students scored between 89 and 100 unit4 
select student_id
from student_marks 
where unit4 
between 89 and 100;
-- 1. name and phone number of students who prefer to use the hard copy of the book
select first_name,last_name,work_phone,book_preference_hardcopy
from student
where book_preference_hardcopy is true;
-- 2. ten students who have the lowest score in unit2
select student_id,unit2
from student_marks
order by unit2 asc
limit 10;
-- 3. email id of male students
select email
from student
where gender = 'Male';
-- 4. phone number of the students whose First name start with 'A'
select work_phone,first_name
from student
where first_name like 'A%';
-- 5. students who have a perfect 100 in both unit4 and unit5
select student_id
from student_marks
where unit4=100 and unit5=100;
-- 6. scores of the first 10 students registered
select student_reg_id,unit2,unit3,unit4,unit5
from student_marks
order by student_reg_id asc
limit 10;
-- 7. Number of students who don't want a hardcopy of the book
select count(id)
from student
where book_preference_hardcopy is false;
-- 8. phone number of female students Whose name start with 'N' 
select work_phone,first_name
from student
where gender = 'Female' and first_name like 'N%';
-- 9. name of students whose email id ends with .gov
select first_name,last_name,email
from student
where email like '%.gov';
-- 10. number of students who have a score below 92 in all units
select count(id)
from student_marks
where unit2<92 and unit3<92 and unit4<92 and unit5<92;
