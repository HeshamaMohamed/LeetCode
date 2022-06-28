# Write your MySQL query statement below
SELECT U.user_id as buyer_id, U.join_date, COALESCE(O.orders, 0) as orders_in_2019

FROM Users U

LEFT JOIN (SELECT buyer_id, COUNT(order_id) as orders
            FROM Orders
            WHERE order_date LIKE '2019%'
            GROUP BY buyer_id) O
         
ON U.user_id = O.buyer_id
