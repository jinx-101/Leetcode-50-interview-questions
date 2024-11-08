#https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/?envType=study-plan-v2&envId=top-sql-50

-- 1731. The Number of Employees Which Report to Each Employee

select Mgr.employee_id,Mgr.name,count(Emp.employee_id) as reports_count,ROUND(AVG(Emp.age)) as average_age
FROM Employees Emp inner join Employees Mgr 
on Emp.reports_to = Mgr.employee_id
GROUP BY Mgr.employee_id,Mgr.name
ORDER BY Mgr.employee_id

