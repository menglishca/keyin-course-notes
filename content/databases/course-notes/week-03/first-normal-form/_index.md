---
title: 2. First Normal Form (1NF)
---

## What is First Normal Form?
  - A type of database normalization where a table has no groups/arrays of data

## A database is in 1NF if:
  - Each column contains only a single value per row (i.e. no lists of values in a column)
  - Each column contains only one type of data
  - No two rows are identical
    - This means there is a unique identifer for each row, usually a primary key

## Examples
### Example of a table **not** in 1NF

  Customer Orders
  | order_id | customer_name | products         |
  |----------|---------------|------------------|
  | 1        | Alice          | Apples, Oranges  |
  | 2        | Bob            | Bananas          |
  | 3        | Alice          | Apples, Bananas  |
    
  - **Issue**: The `products` column contains multiple values (lists of products).
  - **How to Convert to 1NF**:
    - Split the repeating group into individual rows.
    - Ensure each column contains only a single value for each record.

### Table in 1NF

  Customer Orders
  | order_id | customer_name | product    |
  |----------|---------------|------------|
  | 1        | Alice          | Apples     |
  | 1        | Alice          | Oranges    |
  | 2        | Bob            | Bananas    |
  | 3        | Alice          | Apples     |
  | 3        | Alice          | Bananas    |

  - **Fix**: The `products` column is split, and each product is stored in its own row.

## Benefits of 1NF
  - Avoids the issues of storing multiple values in a single field.
  - Simplifies querying the database (e.g., finding which customers ordered a specific product).
  - Ensures that each piece of data is atomic and easily manageable.