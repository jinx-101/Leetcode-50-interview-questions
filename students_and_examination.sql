--https://leetcode.com/problems/students-and-examinations/?envType=study-plan-v2&envId=top-sql-50
-- 1280. Students and Examinations

-- 1) do a cross join and then generate a table 
-- 2) left join it on examinations table 
-- 3) count(student_id) 


SELECT s.student_id , s.student_name , sb.subject_name , count(e.student_id) AS attended_exams
FROM students s cross join Subjects sb
left join Examinations e
on s.student_id = e.student_id
and sb.subject_name = e.subject_name
GROUP BY s.student_id , s.student_name , sb.subject_name
order by s.student_id , sb.subject_name