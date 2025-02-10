#1280 Students and Examination

select stu.student_id, stu.student_name, sub.subject_name, count(exam.subject_name) as attended_exams
from students as stu
join subjects as sub
left join examinations as exam 
on stu.student_id = exam.student_id and sub.subject_name = exam.subject_name
group by stu.student_id, stu.student_name, sub.subject_name
order by stu.student_id, sub.subject_name