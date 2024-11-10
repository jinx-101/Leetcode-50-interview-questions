# Write your MySQL query statement below
--https://leetcode.com/problems/patients-with-a-condition/?envType=study-plan-v2&envId=top-sql-50

SELECT patient_id, patient_name, conditions FROM Patients
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%';

