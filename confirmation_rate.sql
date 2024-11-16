

SELECT S.user_id , 
ROUND(SUM(CASE
WHEN C.action = 'confirmed' THEN 1
ELSE 0
END 
)*1.0 / COUNT(COALESCE(C.action,0)),2) AS confirmation_rate
FROM Confirmations C RIGHT JOIN Signups S 
on s.user_id = c.user_id
GROUP BY user_id 


-- ANOTHER WAY ROUND USING CASE STATEMENTS 

SELECT
    s.user_id, round(sum(if(action = 'confirmed', 1, 0)) / count(*), 2)confirmation_rate
FROM
    signups s
    left join confirmations c
    on c.user_id = s.user_id
GROUP BY
    s.user_id