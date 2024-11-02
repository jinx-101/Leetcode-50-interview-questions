-- return product -> low_fats -> Y and recyclable-> Y
--1757. Recyclable and Low Fat Products
--https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50

SELECT product_id FROM products
WHERE recyclable = 'Y' AND low_fats = 'Y' ;
