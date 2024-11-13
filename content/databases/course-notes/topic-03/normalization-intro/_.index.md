---
title: 1. Introduction to database normalization
---

## What is database normalization?
  - A process used to organize a database into structured tables.
  - Ensures data is stored in a way that reduces redundancy and dependency.

## Purpose of database normalization?
  - **Reduce Redundancy**: Minimize duplicate data across the database.
  - **Improve Data Integrity**: Ensures data is consistent and accurate.
  - **Efficient Data Storage**: Reduces the amount of wasted space and avoids issues with data inconsistency.
  - **Example of redundancy**
    - Consider a table where customer information is repeated for every order.
        - This leads to redundant storage of the same customer data.
        - Updating one piece of customer info requires updating multiple rows.

## Benefits of normalization
  - **Easier Maintenance**: Keeping data organized makes it easier to manage and maintain the database.
  - **Avoiding Data Anomalies**:
    - **Update Anomalies**: If data is duplicated, changing it in one place requires changing it everywhere.
    - **Insert Anomalies**: Difficulties in adding data if other dependent data is missing.
    - **Delete Anomalies**: Removing certain data might unintentionally remove related data.

## Key Terms
- **Composite Primary key**
  - A composite primary key occurs when a table has a  primary key made out of multiple columns instead of just one
  - The idea is that the combined columns must have a unique value, but individually the columns are allowed to repeat
  - **Examples**
    - Table with a Normal Primary Key

      | enrollment_id | student_id | course_id | semester   |
      |---------------|------------|-----------|------------|
      | 1             | 1          | 101       | Fall 2023  |
      | 2             | 1          | 102       | Spring 2024|
      | 3             | 2          | 101       | Fall 2023  |
      | 4             | 3          | 103       | Fall 2023  |

      - **Primary Key**: `enrollment_id`
        - Each enrollment has a unique `enrollment_id` that serves as the primary key.
        - `student_id`, `course_id`, and `semester` provide additional context about the enrollment, but the uniqueness of each row is maintained by the `enrollment_id`.

    - Table with a Composite Primary Key

      | student_id | course_id | semester   |
      |------------|-----------|------------|
      | 1          | 101       | Fall 2023  |
      | 1          | 102       | Spring 2024|
      | 2          | 101       | Fall 2023  |
      | 3          | 103       | Fall 2023  |

      - **Composite Primary Key**: (`student_id`, `course_id`)
        - Instead of using a separate `enrollment_id` to uniquely identify each row, we could use a **composite key** combining both `student_id` and `course_id`.
        - This approach makes sense because the combination of a student and a course uniquely identifies each enrollment.
        - In this case, there's no need for a separate `enrollment_id` column, since the composite key ensures uniqueness.
  - **Summary**
    - **Normal Primary Key**: Uses a single column (`enrollment_id`) to uniquely identify each enrollment.
    - **Composite Primary Key**: Uses the combination of `student_id` and `course_id` to ensure that no student can be enrolled in the same course twice.
