# Write your MySQL query statement below
SELECT P.product_id, P.product_name
FROM Sales S
JOIN Product P
ON S.product_id = P.product_id
Group by P.product_id
HAVING MIN(S.sale_date) >= '2019-01-01' 
    AND MAX(S.sale_date) <= '2019-03-31'
