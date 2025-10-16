-- # Write your MySQL query statement below
SELECT eui.unique_id AS unique_id, e.name AS name
FROM Employees e
LEFT JOIN EmployeeUNI eui
ON e.id = eui.id
