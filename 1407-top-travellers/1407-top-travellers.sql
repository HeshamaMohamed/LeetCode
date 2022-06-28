# Write your MySQL query statement below
SELECT DISTINCT U.name, COALESCE(R.distance, 0) as travelled_distance
FROM Users U
LEFT JOIN (SELECT user_id, SUM(distance) as distance
            FROM Rides
            GROUP BY user_id) R
ON U.id = R.user_id
ORDER BY travelled_distance desc, name asc

