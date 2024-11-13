---
title: 5. Designing a database with normalization in mind
---

## Introduction
- Database normalization is the process of organizing data in a database to reduce redundancy and improve data integrity.
- The goal is to design a database schema that is efficient, minimizes data duplication, and ensures consistency.

## Steps for Database Design with Normalization

1. **Identify Entities and Relationships**
   - Determine the main entities (tables) and their relationships.
   - Example: Identify entities such as `Students`, `Courses`, and `Enrollments`.

2. **Define Primary Keys**
   - Assign unique identifiers (primary keys) for each table.
   - Example: `student_id` for the `Students` table and `course_id` for the `Courses` table.

3. **Design Tables and Relationships**
   - Create tables for each entity, ensuring they meet 1NF.
   - Define relationships between tables using foreign keys.
   - Example: `Enrollments` table linking `Students` and `Courses` with foreign keys.

4. **Apply Normalization Rules**
   - Ensure the database design adheres to 2NF by removing partial dependencies.
   - Apply 3NF by eliminating transitive dependencies.
   - Example: Separate `Departments` from `Employees` to avoid redundancy.

5. **Review and Refine**
   - Examine the database design for any remaining redundancy or anomalies.
   - Optimize the design for performance and ease of use.

## Example

### Original Table:

| student_id | student_name | course_id | course_name | instructor_name |
|------------|--------------|-----------|-------------|-----------------|
| 1          | Alice        | 101       | Math        | Prof. Johnson   |
| 2          | Bob          | 102       | Physics     | Prof. Smith     |
| 1          | Alice        | 102       | Physics     | Prof. Smith     |

### Normalization Steps:

1. **1NF**: Ensure atomic values and unique column names.
   - Original table already in 1NF.

2. **2NF**: Remove partial dependencies.
   - `course_name` and `instructor_name` depend on `course_id`, not `student_id`.

   **Tables**:
   - **Students Table**: 
     | student_id | student_name |
     |------------|--------------|
     | 1          | Alice        |
     | 2          | Bob          |

   - **Courses Table**:
     | course_id | course_name | instructor_name |
     |-----------|-------------|-----------------|
     | 101       | Math        | Prof. Johnson   |
     | 102       | Physics     | Prof. Smith     |

   - **Enrollments Table**:
     | student_id | course_id |
     |------------|-----------|
     | 1          | 101       |
     | 1          | 102       |
     | 2          | 102       |

3. **3NF**: Remove transitive dependencies.
   - Already achieved by separating courses from enrollments.