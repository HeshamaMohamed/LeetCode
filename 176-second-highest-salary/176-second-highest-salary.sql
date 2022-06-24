# Write your MySQL query statement below
SELECT MAX(salary) as SecondHighestSalary 
From Employee
WHERE salary != (SELECT MAX(salary) FROM Employee)