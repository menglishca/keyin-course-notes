---
title: 3. PostgreSQL Cheatsheet
---

## Common PostgreSQL Data Types
- **INTEGER**: Whole numbers (e.g., `1`, `100`).
- **SERIAL**: Auto-incrementing integer (used for primary keys).
- **VARCHAR(n)**: Variable-length string with a maximum length of `n`.
- **TEXT**: Variable-length string with no specific maximum length.
- **DATE**: Date values (e.g., `2024-09-15`).
- **BOOLEAN**: True/false values (e.g., `TRUE`, `FALSE`).
- **DECIMAL(x, y)**: Decimal number with a maximum total length `x`, with `y` places after the decimal (e.g., `123.45`).

## Creating Tables

### CREATE
Create a new table in the database.
```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
);
```

**Example:**
```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    enrollment_date DATE
);
```

## Defining Foreign Keys
A foreign key is a field in one table that uniquely identifies a row of another table. It creates a relationship between the two tables.

### Syntax
```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
    FOREIGN KEY (foreign_column) REFERENCES other_table(primary_column)
);
```

**Example:**
```sql
CREATE TABLE enrollments (
    student_id INTEGER,
    course_id INTEGER,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);
```

## Composite Primary Keys
A composite primary key is a primary key that consists of two or more columns used to uniquely identify a row in a table.

### Syntax
```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
    PRIMARY KEY (column1, column2)
);
```

**Example:**
```sql
CREATE TABLE enrollments (
    student_id INTEGER,
    course_id INTEGER,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id)
);
```

## Basic SQL Commands

### INSERT
Insert new records into a table.
```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```

**Example:**
```sql
INSERT INTO students (first_name, last_name, email, enrollment_date)
VALUES 
    ('Alice', 'Johnson', 'alice.johnson@example.com', '2024-09-15'),
    ('Bob', 'Smith', 'bob.smith@example.com', '2024-09-16'),
    ('Charlie', 'Williams', 'charlie.williams@example.com', '2024-09-17');
```

#### Example Data After Insertion:
| id | first_name | last_name | email                        | enrollment_date |
|----|------------|-----------|------------------------------|------------------|
| 1  | Alice      | Johnson   | alice.johnson@example.com    | 2024-09-15       |
| 2  | Bob        | Smith     | bob.smith@example.com        | 2024-09-16       |
| 3  | Charlie    | Williams  | charlie.williams@example.com  | 2024-09-17       |

### SELECT
Retrieve records from one or more tables.
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

**Example:**
```sql
SELECT first_name, last_name
FROM students
WHERE enrollment_date > '2024-09-15';
```

#### Example Data:
| id | first_name | last_name | email                        | enrollment_date |
|----|------------|-----------|------------------------------|------------------|
| 1  | Alice      | Johnson   | alice.johnson@example.com    | 2024-09-15       |
| 2  | Bob        | Smith     | bob.smith@example.com        | 2024-09-16       |
| 3  | Charlie    | Williams  | charlie.williams@example.com  | 2024-09-17       |

#### Query Result:
| first_name | last_name |
|------------|-----------|
| Bob        | Smith     |
| Charlie    | Williams  |

### UPDATE
Modify existing records in a table.
```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

**Example:**
```sql
UPDATE students
SET email = 'alice.newemail@example.com'
WHERE first_name = 'Alice' AND last_name = 'Johnson';
```

### DELETE
Remove records from a table.
```sql
DELETE FROM table_name
WHERE condition;
```

**Example:**
```sql
DELETE FROM students
WHERE first_name = 'Alice' AND last_name = 'Johnson';
```

#### Example Data After Deletion:
| id | first_name | last_name | email                        | enrollment_date |
|----|------------|-----------|------------------------------|------------------|
| 2  | Bob        | Smith     | bob.smith@example.com        | 2024-09-16       |
| 3  | Charlie    | Williams  | charlie.williams@example.com  | 2024-09-17       |

## COUNT Function
The `COUNT()` function returns the number of rows that match a specified condition.
### Syntax
```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

**Example:**
```sql
SELECT COUNT(*) FROM students WHERE enrollment_date >= '2024-09-15';
```

#### Example Data:
| id | first_name | last_name | email                        | enrollment_date |
|----|------------|-----------|------------------------------|------------------|
| 1  | Alice      | Johnson   | alice.johnson@example.com    | 2024-09-15       |
| 2  | Bob        | Smith     | bob.smith@example.com        | 2024-09-16       |
| 3  | Charlie    | Williams  | charlie.williams@example.com  | 2024-09-17       |

#### Query Result:
| count |
|-------|
| 3     |

## Advanced SQL Concepts

### JOINs
JOINs are used to combine rows from two or more tables based on a related column between them. They are essential when you need to retrieve data that is stored across multiple tables in a relational database.  
`INNER JOIN` is just another name for `JOIN`
```sql
SELECT column1, column2
FROM table1
INNER JOIN table2 ON table1.common_column = table2.common_column;
```

**Example:**
```sql
SELECT students.first_name, courses.course_name
FROM students
INNER JOIN enrollments ON students.id = enrollments.student_id
INNER JOIN courses ON enrollments.course_id = courses.id;
```

#### Example Data
1. **students table**:
| id | first_name | last_name | email                        | enrollment_date |
|----|------------|-----------|------------------------------|------------------|
| 1  | Alice      | Johnson   | alice.johnson@example.com    | 2024-09-15       |
| 2  | Bob        | Smith     | bob.smith@example.com        | 2024-09-16       |
| 3  | Charlie    | Williams  | charlie.williams@example.com  | 2024-09-17       |

2. **courses table**:
| id | course_name   | course_description             |
|----|---------------|--------------------------------|
| 1  | Physics 101   | Introduction to Physics        |
| 2  | Literature 201 | Basics of World Literature     |
| 3  | History 101   | A Survey of Historical Events  |

3. **enrollments table**:
| student_id | course_id | enrollment_date |
|------------|-----------|------------------|
| 1          | 1         | 2024-09-18       |
| 1          | 2         | 2024-09-18       |
| 2          | 3         | 2024-09-19       |

#### Result of the INNER JOIN Query
Executing the previous JOIN query would yield the following results:

| first_name | course_name   |
|------------|---------------|
| Alice      | Physics 101   |
| Alice      | Literature 201 |
| Bob        | History 101   |

### Nested Queries (Subqueries)
A query nested inside another query. They are useful for filtering results based on aggregated data or complex conditions.

#### Using a Subquery in the WHERE Clause
You can use a subquery to provide a value for a condition in the main query.
```sql
SELECT column1
FROM table1
WHERE column2 IN (SELECT column2 FROM table2 WHERE condition);
```

**Example:**
```sql
SELECT first_name
FROM students
WHERE id IN (SELECT student_id FROM enrollments WHERE course_id = 1);
```

#### Example Data:
| student_id | course_id | enrollment_date |
|------------|-----------|------------------|
| 1          | 1         | 2024-09-18       |
| 1          | 2         | 2024-09-18       |
| 2          | 3         | 2024-09-19       |

#### Query Result:
| first_name |
|------------|
| Alice      |

#### Using a Subquery in the SELECT Clause
You can also include a subquery in the SELECT clause to calculate aggregated values.
```sql
SELECT column1,
       (SELECT COUNT(*) FROM table2 WHERE condition) AS alias_name
FROM table1;
```

**Example:**
```sql
SELECT first_name,
       (SELECT COUNT(*) FROM enrollments WHERE student_id = students.id) AS course_count
FROM students;
```

#### Query Result:
| first_name | course_count |
|------------|--------------|
| Alice      | 2            |
| Bob        | 1            |
