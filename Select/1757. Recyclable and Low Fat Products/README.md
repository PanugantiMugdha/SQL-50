# Products: Low Fat and Recyclable

## Problem Description

You are given a table **Products** with the following structure:

| Column Name | Type |
|--------------|------|
| product_id   | int  |
| low_fats     | enum('Y', 'N') |
| recyclable   | enum('Y', 'N') |

- **product_id** is the primary key.  
- **low_fats** indicates if the product is low fat ('Y' for yes, 'N' for no).  
- **recyclable** indicates if the product is recyclable ('Y' for yes, 'N' for no).  

### Task
Write a SQL query to find the IDs of all products that are both low fat and recyclable.  
Return the result table in any order.

## Example

**Input:**

| product_id | low_fats | recyclable |
|-------------|-----------|------------|
| 0 | Y | N |
| 1 | Y | Y |
| 2 | N | Y |

**Output:**

| product_id |
|-------------|
| 1 |

## SQL Query

```sql
SELECT product_id
FROM Products
```
**Time Complexity:** **O(n)**  
  The query scans each row in the `Products` table once to evaluate the `WHERE` conditions (`low_fats = 'Y'` and `recyclable = 'Y'`).  
  Here, **n** is the total number of rows in the `Products` table.

 **Space Complexity:** **O(1)**  
  The query uses a constant amount of additional memory since no extra data structures are created apart from temporary buffers used internally by the database engine.
WHERE low_fats = 'Y' 
  AND recyclable = 'Y';
