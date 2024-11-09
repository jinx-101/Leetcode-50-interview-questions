--https://leetcode.com/problems/second-highest-salary/submissions/1447912758/?envType=study-plan-v2&envId=top-sql-50

-- Second Highest Salary

SELECT MAX(salary)  as SecondHighestSalary FROM Employee 
WHERE salary < (SELECT MAX(SALARY) FROM Employee)


