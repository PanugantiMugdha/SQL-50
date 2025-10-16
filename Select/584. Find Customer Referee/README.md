# Customer Referral Filter

## Problem Description

You are given a table **Customer** with the following structure:

| Column Name | Type    |
|--------------|---------|
| id           | int     |
| name         | varchar |
| referee_id   | int     |

- **id** is the primary key.  
- Each row shows a customer's ID, their name, and the ID of the customer who referred them.  

### Task
Find the names of customers who are either:
- Referred by any customer with `id != 2`, or  
- Not referred by any customer (`referee_id` is `NULL`).

Return the result table in any order.

## Example

**Input:**

| id | name | referee_id |
|----|------|-------------|
| 1 | Will | NULL |
| 2 | Jane | NULL |
| 3 | Alex | 2 |
| 4 | Bill | 1 |
| 5 | Zack | 2 |
| 6 | Mark | 1 |

**Output:**

| name |
|------|
| Will |
| Jane |
| Bill |
| Mark |

## SQL Query

```sql
SELECT name
FROM Customer
WHERE IFNULL(referee_id, 0) != 2;
```
## Complexity Analysis

- **Time Complexity:** O(n)  
  The query checks each row once to evaluate the condition.

- **Space Complexity:** O(1)  
  Uses constant additional space.
