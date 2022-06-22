# Write your MySQL query statement below
SELECT customers.name as Customers
FROM customers
LEFT JOIN Orders
ON customers.id = Orders.customerId
WHERE Orders.id IS NULL