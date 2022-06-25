# Write your MySQL query statement below
SELECT s.name
FROM SalesPerson s
WHERE s.sales_id NOT IN (
                            SELECT o.sales_id
                            FROM Orders o
                            WHERE o.com_id = (
                                            SELECT c.com_id 
                                            FROM company c 
                                            WHERE c.name = 'RED' 
                                            )
                        )