# Write your MySQL query statement below
# Update users
# SET name = UPPER(LEFT(name, 1));

SELECT user_id,  CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTR(name, 2))) as name 
FROM users
ORDER BY user_id;
