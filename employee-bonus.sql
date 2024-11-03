-- https://leetcode.com/problems/employee-bonus/submissions/1441984260/?envType=study-plan-v2&envId=top-sql-50
-- 577. Employee Bonus
select e.name , b.bonus
FROM employee e left join bonus b on 
e.empid = b.empid 
where coalesce( b.bonus ,0) < 1000