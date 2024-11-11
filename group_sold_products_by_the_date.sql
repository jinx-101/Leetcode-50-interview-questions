
--https://leetcode.com/problems/group-sold-products-by-the-date/?envType=study-plan-v2&envId=top-sql-50
-- 1484. Group Sold Products By The Date


SELECT sell_date , count( distinct product) as num_sold , GROUP_CONCAT(distinct product) as products 
FROM Activities 
GROUP BY  sell_date 
order by sell_date , products
