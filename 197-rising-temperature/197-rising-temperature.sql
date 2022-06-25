# Write your MySQL query statement below
SELECT a.id
FROM Weather a
JOIN Weather b
ON a.recordDate = DATE_ADD(b.recordDate,interval 1 day)
WHERE a.temperature > b.temperature