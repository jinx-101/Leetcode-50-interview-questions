# Write your MySQL query statement below
-- https://leetcode.com/problems/find-users-with-valid-e-mails/submissions/1454429655/?envType=study-plan-v2&envId=top-sql-50

SELECT * FROM Users
WHERE UPPER(mail) REGEXP '^[a-z][a-zA-Z0-9_.-]*@leetcode[.]com$'