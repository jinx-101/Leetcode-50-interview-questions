--https://leetcode.com/problems/percentage-of-users-attended-a-contest/?source=submission-ac
--1633. Percentage of Users Attended a Contest

SELECT contest_id , ROUND (count(user_id)*100.0/(SELECT count( distinct user_id )from users),2) as percentage
FROM Register 
GROUP BY contest_id 
ORDER BY percentage DESC,contest_id ASC