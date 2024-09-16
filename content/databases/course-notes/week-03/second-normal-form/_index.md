---
title: 3. Second Normal Form (2NF)
---

## A table is in 2NF if:
  - The table is already in 1NF
  - All attributes in the row must depend entirely on the primary key, and not just part of the primary key
    - This commonly occurs when you have a **composite primary key** (a primary key made up of two or more values instead of just one)

## Examples
### Table in 1NF but NOT in 2NF:

  | order_id | product_id | product_name |
  |----------|------------|--------------|
  | 1        | 101        | Apples       |
  | 2        | 102        | Bananas      |
  | 2        | 101        | Apples       |
  | 1        | 103        | Oranges      |

  - This table has a `composite_primary_key` that means the primary key is made up of two columns (`order_id` and `product_id` in this case)
  - **Problem**: The `product_name` is dependent on only the `product_id` and not the entire composite key (`order_id`, `product_id`).
  - This creates redundancy since the product name is repeated for every order that includes the same product.

  - **How to Convert to 2NF**:
    - Remove partial dependencies by breaking the table into smaller tables.
    - Each non-key attribute should depend on the entire primary key or a single primary key in its own table.

### Tables in 2NF

  **Products Table**:
  | product_id | product_name |
  |------------|--------------|
  | 101        | Apples       |
  | 102        | Bananas      |
  | 103        | Oranges      |

  **Order Details Table**:
  | order_id | product_id |
  |----------|------------|
  | 1        | 101        |
  | 1        | 103        |
  | 2        | 102        |

- **Fix**: Now, `product_name` is in a separate `Products` table and depends only on `product_id`. The `Orders` and `Order Details` tables handle the relationship between orders and products without redundancy.

## Benefits of 2NF
  - Eliminates redundancy caused by partial dependencies.
  - Reduces the chances of anomalies during data updates (e.g., updating a product name in one place instead of multiple rows).
  - Ensures that each non-key attribute relates directly to the primary key in its respective table.