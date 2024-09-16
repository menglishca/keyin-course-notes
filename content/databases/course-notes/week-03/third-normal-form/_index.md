---
title: 4. Third Normal Form (3NF)
---

## Quick Recap: The transitive property
- A concept from mathematics and logic which states:
  - If a relation holds between A and B, and between B and C, then it must also hold between A and C
- Example:
  - John trusts Maggie
  - Maggie trusts Steve
  - By the transitive property, because John trusts Maggie and Maggie trusts Steve, then John also trusts Steve

## A table is in 3NF if:
  - The table is already in 2NF
  - It has **no transitive dependencies**. This means that **non-key columns** should depend only on the primary key, not on other non-key columns.

### Simplified Explanation:
- **2NF** removes partial dependencies (when non-key columns depend only on part of a composite primary key).
- **3NF** goes further and removes transitive dependencies (when non-key columns depend on other non-key columns).
- This ensures that every non-key attribute is fully and directly dependent on the table’s primary key.

## Examples
### Table Before 3NF:

Consider a table for storing information about employees and their departments:

| employee_id | employee_name | department_id | department_name |
|-------------|---------------|---------------|-----------------|
| 1           | John          | 10            | HR              |
| 2           | Jane          | 20            | IT              |
| 3           | Jim           | 10            | HR              |

- **Problem**: `department_name` depends on `department_id`, not directly on `employee_id`. This creates a **transitive dependency**:
  - `employee_id` → `department_id`
  - `department_id` → `department_name`
- If a department’s name changes, it needs to be updated in multiple rows, leading to redundancy and potential inconsistencies.

### Normalizing to 3NF:

To achieve 3NF, we split the table into two tables to remove the transitive dependencies.

#### Employees Table:

| employee_id | employee_name | department_id |
|-------------|---------------|---------------|
| 1           | John          | 10            |
| 2           | Jane          | 20            |
| 3           | Jim           | 10            |

#### Departments Table:

| department_id | department_name |
|--------------|-----------------|
| 10           | HR              |
| 20           | IT              |

- **Explanation**:
  - The **Employees** table now contains only employee-specific information and a reference to `department_id`.
  - The **Departments** table holds all department-specific information, including `department_name`.
  - Each non-key column in both tables is fully and directly dependent on the primary key of its table.

## Benefits of 2NF
- **3NF** ensures that each non-key column is directly related to the primary key, preventing transitive dependencies.
- It helps reduce data redundancy and avoids update, delete, and insert anomalies.