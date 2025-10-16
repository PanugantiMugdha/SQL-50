# Employee Unique ID Mapping

## Problem Description

You are given two tables: **Employees** and **EmployeeUNI**.

### Table: Employees

| Column Name | Type    |
|--------------|---------|
| id           | int     |
| name         | varchar |

- **id** is the primary key.  
- Each row contains the ID and name of an employee.

### Table: EmployeeUNI

| Column Name | Type |
|--------------|------|
| id           | int  |
| unique_id    | int  |

- (**id**, **unique_id**) is the primary key.  
- Each row contains the employee’s ID and their corresponding unique ID.

### Task
Write a SQL query to show the **unique ID** of each employee.  
If a user does not have a unique ID, display `NULL`.

Return the result table in any order.

## Example

**Input:**

**Employees table:**

| id | name  |
|----|-------|
| 1  | Alice |
| 7  | Bob   |
| 11 | Meir  |
| 90 | Winston |
| 3  | Jonathan |

**EmployeeUNI table:**

| id | unique_id |
|----|------------|
| 3  | 1 |
| 11 | 2 |
| 90 | 3 |

**Output:**

| unique_id | name     |
|------------|----------|
| 1          | Jonathan |
| null       | Bob      |
| 2          | Meir     |
| 3          | Winston  |
| null       | Alice    |

## SQL Query

```sql
SELECT eui.unique_id AS unique_id, e.name AS name
FROM Employees e
LEFT JOIN EmployeeUNI eui
ON e.id = eui.id;
```
## Complexity Analysis

- **Time Complexity:** O(n)  
  The query performs a left join, scanning each row in `Employees` and matching with `EmployeeUNI`.

- **Space Complexity:** O(1)  
  Uses constant additional space.
