--https://leetcode.com/problems/primary-department-for-each-employee/?envType=study-plan-v2&envId=top-sql-50
-- 1789. Primary Department for Each Employee

-- report all employees / records with primary_flag = 'Y'
-- report all the employees who only belong to one department 


-- below query to find employees who belong to only one department
SELECT employee_id,department_id   from Employee
group by employee_id
having count(department_id)=1

union all 
-- below query  to find out employees who have primary_flag as 'Y'
select employee_id , department_id from Employee
where primary_flag = 'Y'