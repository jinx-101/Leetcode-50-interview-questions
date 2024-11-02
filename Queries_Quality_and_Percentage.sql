-- https://leetcode.com/problems/queries-quality-and-percentage/?submissionId=1440740784
-- 1211. Queries Quality and Percentage
-- might have duplicates 
-- position column has a value from 1 to 500.
-- rating column has a value from 1 to 5. Query with rating less than 3 is a poor query. 


-- add column 'quality' -> rating*1.0 / position 
-- poor column - > case if rating < 3 then 1 else 0 

WITH queries_quality as 
(
SELECT * , (rating*1.0)/position AS quality ,
CASE 
WHEN rating < 3 THEN 1
ELSE 0
END as poor_query
FROM Queries
WHERE query_name is not null
)

SELECT query_name , ROUND(SUM(quality) / COUNT(quality),2) as quality , ROUND(SUM(poor_query)*100.0/count(poor_query),2) AS poor_query_percentage 
FROM queries_quality
GROUP BY query_name