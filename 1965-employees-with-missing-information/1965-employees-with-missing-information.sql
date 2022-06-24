# Write your MySQL query statement below
SELECT E1.employee_id
FROM Employees E1
LEFT JOIN Salaries S1
    ON E1.employee_id = S1.employee_id
WHERE S1.salary IS NULL

UNION

SELECT S2.employee_id
FROM Salaries S2
LEFT JOIN Employees E2
    ON S2.employee_id = E2.employee_id
WHERE E2.name IS NULL
order by employee_id
