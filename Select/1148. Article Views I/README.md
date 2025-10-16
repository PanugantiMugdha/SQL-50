# Authors Who Viewed Their Own Articles

## Problem Description

You are given a table **Views** with the following structure:

| Column Name | Type |
|--------------|------|
| article_id   | int  |
| author_id    | int  |
| viewer_id    | int  |
| view_date    | date |

- There is **no primary key**, so duplicate rows may exist.  
- Each row indicates that a viewer viewed an article written by an author on a certain date.  
- If `author_id` and `viewer_id` are equal, it means the author viewed their own article.

### Task
Find all authors who viewed **at least one of their own articles**.  
Return the result table sorted by **id** in ascending order.

## Example

**Input:**

| article_id | author_id | viewer_id | view_date |
|-------------|------------|------------|------------|
| 1 | 3 | 5 | 2019-08-01 |
| 1 | 3 | 6 | 2019-08-02 |
| 2 | 7 | 7 | 2019-08-01 |
| 2 | 7 | 6 | 2019-08-02 |
| 4 | 7 | 1 | 2019-07-22 |
| 3 | 4 | 4 | 2019-07-21 |
| 3 | 4 | 4 | 2019-07-21 |

**Output:**

| id |
|----|
| 4  |
| 7  |

## SQL Query

```sql
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
```
## Complexity Analysis

- **Time Complexity:** O(n)  
  Each row is checked once to compare `author_id` and `viewer_id`.

- **Space Complexity:** O(1)  
  Uses constant additional space.
