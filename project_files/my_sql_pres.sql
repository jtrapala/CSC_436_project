create table grades
(
    student char primary key,
    course_grade int,
    seminar_grade int
);


select *
from exam1.grades;

insert into grades
    (student, course_grade, seminar_grade)
values('A', 45, NULL);

insert into grades
    (student, course_grade, seminar_grade)
values('B', NULL, 90);

insert into grades
    (student, course_grade, seminar_grade)
values('C', 100, 80);

#Question 1
select student
from grades
where(course_grade > seminar_grade and seminar_grade>75 and
    course_grade>90) or(course_grade>50);

Question 2
select student
from grades
where(course_grade > seminar_grade) and
    (seminar_grade>75) and (course_grade>90 or course_grade<50);

select *
from grades;

# it is same...but how?
#select * from grades in
select *
from grades2; 