# Write your MySQL query statement below
SELECT s.name
FROM SalesPerson s
WHERE s.sales_id NOT IN (
                            SELECT o.sales_id
                            FROM Orders o
                            inner join Company C
                            on O.com_id=C.com_id
                            WHERE o.com_id = (
                                            SELECT t.com_id 
                                            FROM company t 
                                            WHERE t.name = 'RED' 
                                            )
                        )