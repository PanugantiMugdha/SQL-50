# World: Large Countries

## Problem Description

You are given a table **World** with the following structure:

| Column Name | Type    |
|--------------|---------|
| name         | varchar |
| continent    | varchar |
| area         | int     |
| population   | int     |
| gdp          | bigint  |

- **name** is the primary key.  
- Each row gives the country's name, its continent, area, population, and GDP.

### Task
Find the countries that have an area of at least **3,000,000** or a population of at least **25,000,000**.  
Return the country's name, population, and area.

## Example

**Input:**

| name | continent | area | population | gdp |
|------|------------|------|-------------|------|
| Afghanistan | Asia | 652230 | 25500100 | 20343000000 |
| Albania | Europe | 28748 | 2831741 | 12960000000 |
| Algeria | Africa | 2381741 | 37100000 | 188681000000 |

**Output:**

| name | population | area |
|------|-------------|------|
| Afghanistan | 25500100 | 652230 |
| Algeria | 37100000 | 2381741 |

## SQL Query

```sql
SELECT name, population, area
FROM World
WHERE area >= 3000000 
   OR population >= 25000000;
```
## Complexity Analysis

- **Time Complexity:** O(n)  
  The query checks each row once to evaluate the condition.

- **Space Complexity:** O(1)  
  Uses constant additional space.
