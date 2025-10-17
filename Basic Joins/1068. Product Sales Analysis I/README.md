# Product Sales Report

## Problem Description

You are given two tables: **Sales** and **Product**.

### Table: Sales

| Column Name | Type |
|--------------|------|
| sale_id      | int  |
| product_id   | int  |
| year         | int  |
| quantity     | int  |
| price        | int  |

- (**sale_id**, **year**) is the primary key.  
- **product_id** is a foreign key referencing the **Product** table.  
- Each row represents a sale of a product in a given year, with the price per unit.

### Table: Product

| Column Name  | Type    |
|---------------|---------|
| product_id    | int     |
| product_name  | varchar |

- **product_id** is the primary key.  
- Each row shows the product name of each product.

### Task
Write a SQL query to report the **product_name**, **year**, and **price** for each sale in the **Sales** table.  
Return the result table in any order.

## Example

**Input:**

**Sales table:**

| sale_id | product_id | year | quantity | price |
|----------|-------------|------|-----------|--------|
| 1 | 100 | 2008 | 10 | 5000 |
| 2 | 100 | 2009 | 12 | 5000 |
| 7 | 200 | 2011 | 15 | 9000 |

**Product table:**

| product_id | product_name |
|-------------|--------------|
| 100 | Nokia |
| 200 | Apple |
| 300 | Samsung |

**Output:**

| product_name | year | price |
|---------------|------|--------|
| Nokia | 2008 | 5000 |
| Nokia | 2009 | 5000 |
| Apple | 2011 | 9000 |

## SQL Query

```sql
SELECT p.product_name, s.year, s.price
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id;
```
## Complexity Analysis

- **Time Complexity:** O(n)  
  The query performs a left join, scanning all rows in the `Sales` table and matching with the `Product` table.

- **Space Complexity:** O(1)  
  Uses constant additional space.
