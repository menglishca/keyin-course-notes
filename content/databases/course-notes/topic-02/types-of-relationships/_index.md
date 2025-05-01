---
title: 3. Types of relationships
---

- The relationships used when linking data across tables can be broken down into three main types:
  - One-to-one (1:1)
  - One-to-many (1:M)
  - Many-to-many (M:M)

### 1. One-to-one (1:1) relationship
- This is the simplest type of relationship, and it's the same type of relationship we were looking at when linking our tables previously
- This type of relationship says that a record in one table can only be linked to one record in another, and vice-versa
- **Example: A company has company vehicles, each employee gets their own company car**
  - **Tables:**  
    Employees Table
    | employee_id | name          | car_id |
    |-------------|---------------|--------|
    | 1           | Sarah Miller  | 101    |
    | 2           | James Wilson  | 102    |

    Cars Table
    | car_id | make   | model      |
    |--------|--------|------------|
    | 101    | Toyota | Camry      |
    | 102    | Honda  | Accord     |

  - Relationship:
    - `car_id` in the `Employees` table is a foreign key that references `car_id` in the `Cars` table.
    - Each employee is linked to exactly one car, and each car is assigned to exactly one employee. Thus one car for one employee

### 2. One-to-many (1:M) relationship
- This relationship is a little bit more complicated, but is quite common when linking tables
- This type of relationship says that a record in one table can be linked to many records in another table
- **Example: A company has multiple departments, and each department is made up of multiple employees**
  - **Tables:**  
    Departments Table
    | department_id | department_name |
    |---------------|-----------------|
    | 1             | Engineering     |
    | 2             | Marketing       |

    Employees Table
    | employee_id | name          | department_id |
    |-------------|---------------|---------------|
    | 1           | Sarah Miller  | 1             |
    | 2           | James Wilson  | 1             |
    | 3           | Emily Brown   | 2             |

  - Relationship
  - `department_id` in the `Employees` table is a foreign key that references `department_id` in the `Departments` table.
  - Each department can have multiple employees, but each employee can only belong to one department. Thus, one department for many employees

### 3. Many-to-many (M:M) relationship
- This is probably the most complicated relationship, but it's not a huge leap from the existing relationships we know
- This type of relationship says that multiple records in one table can be associated with multiple records in another
- **Example**: Students enroll in multiple courses, and each course can have multiple students.
  - **Tables:**  
    Students Table
    | student_id | name         |
    |------------|--------------|
    | 1          | John Doe     |
    | 2          | Jane Smith   |

    Courses Table
    | course_id | course_name     |
    |-----------|-----------------|
    | 101       | Database Systems|
    | 102       | Calculus I      |

  - Wait, how can we link these?
  - The typical solution would be to link the two tables on their primary keys `student_id` and `course_id`
  - However, we can only have one value in a column. So if a student can be in multiple courses, how do we show their course ids?
  - The solution is that we **must** create a third intermediate table (known as a junction table) to represent the relationship
  - Our intermediate table could be:  
    Enrollments Table (Junction table)
    | student_id | course_id |
    |------------|-----------|
    | 1          | 101       |
    | 1          | 102       |
    | 2          | 101       |

  - Relationship:
    - `student_id` in the `Enrollments` table is a foreign key that references `student_id` in the `Students` table.
    - `course_id` in the `Enrollments` table is a foreign key that references `course_id` in the `Courses` table.
    - This allows us to have multiple rows per student ID, meaning a student can be in multiple courses and vice versa.
    - Each student can enroll in multiple courses, and each course can have multiple students enrolled.

### 4. Examples of different relationships
- In  the following examples, try to identify what the relationship type is and (if necessary) what the junction table might look like

<details>
  <summary>Example 1: User Profiles</summary>

#### Problem:
A website wants to maintain detailed profiles for its users. Each user has exactly one profile, and each profile belongs to exactly one user.

#### Tables:

**Users Table**
| user_id | username    | email            |
|---------|-------------|------------------|
| 1       | alice_john  | alice@example.com|
| 2       | bob_smith   | bob@example.com  |

**Profiles Table**
| profile_id | user_id | bio              | profile_picture |
|------------|---------|------------------|-----------------|
| 1          | 1       | Love to code!    | alice.jpg       |
| 2          | 2       | Enjoys hiking.   | bob.jpg         |

#### Choosing Primary and Foreign Keys:

1. **Primary Key**:
   - In the `Users` table, `user_id` serves as the primary key. It uniquely identifies each user.
   - In the `Profiles` table, `profile_id` serves as the primary key. It uniquely identifies each profile.

2. **Foreign Key**:
   - `user_id` in the `Profiles` table is a foreign key referencing `user_id` in the `Users` table.
   - Each user has exactly one profile, and each profile is linked to exactly one user.

#### Resulting Table Structure:

**Users Table**
- **Primary Key**: `user_id`
  | user_id | username    | email            |
  |---------|-------------|------------------|
  | 1       | alice_john  | alice@example.com|
  | 2       | bob_smith   | bob@example.com  |

**Profiles Table**
- **Primary Key**: `profile_id`
- **Foreign Key**: `user_id` (refers to `user_id` in the `Users` table)
  | profile_id | user_id | bio              | profile_picture |
  |------------|---------|------------------|-----------------|
  | 1          | 1       | Love to code!    | alice.jpg       |
  | 2          | 2       | Enjoys hiking.   | bob.jpg         |

#### Relationship Type:
- **One-to-One (1:1)**: Each user has one profile, and each profile is associated with exactly one user.

</details>

<details>
  <summary>Example 2: Patients and Doctors</summary>

#### Problem:
A hospital wants to track which patients are treated by which doctors. In the hospital a patient can be seen by multiple doctors

#### Tables:

**Patients Table**
| patient_id | name         |
|------------|--------------|
| 1          | Alice Green  |
| 2          | Bob Brown    |

**Doctors Table**
| doctor_id | name         |
|-----------|--------------|
| 1         | Dr. Smith    |
| 2         | Dr. Adams    |

**Appointments Table**
| appointment_id | patient_id | doctor_id | appointment_date |
|----------------|------------|-----------|------------------|
| 1              | 1          | 1         | 2024-09-15       |
| 2              | 2          | 2         | 2024-09-16       |

#### Relationship Type:
- **Many-to-Many (M:M)**: Each patient can see multiple doctors, and each doctor can see multiple patients.

</details>

<details>
  <summary>Example 3: Department and Employees</summary>

#### Problem:
A company wants to organize employees by department.

#### Tables:

**Departments Table**
| department_id | department_name |
|---------------|-----------------|
| 1             | HR              |
| 2             | Engineering     |

**Employees Table**
| employee_id | name         | department_id |
|-------------|--------------|---------------|
| 1           | Sarah Miller | 1             |
| 2           | John Doe     | 2             |

#### Relationship Type:
- **One-to-Many (1:M)**: Each department can have multiple employees, but each employee belongs to only one department.

</details>

<details>
  <summary>Example 4: Courses and Students</summary>

#### Problem:
A university needs to track which students are enrolled in which courses.

#### Tables:

**Courses Table**
| course_id | course_name       |
|-----------|-------------------|
| 301       | Introduction to CS|
| 302       | Data Structures   |

**Students Table**
| student_id | name         |
|------------|--------------|
| 1          | Alice Johnson |
| 2          | Bob Brown    |

**Enrollments Table** (Junction Table)
| student_id | course_id |
|------------|-----------|
| 1          | 301       |
| 1          | 302       |
| 2          | 301       |

#### Relationship Type:
- **Many-to-Many (M:M)**: Each student can enroll in multiple courses, and each course can have multiple students.

</details>

<details>
  <summary>Example 5: Orders and Products</summary>

#### Problem:
A retail store wants to manage the products in each order.

#### Tables:

**Orders Table**
| order_id | order_date |
|----------|------------|
| 1001     | 2024-09-01 |
| 1002     | 2024-09-02 |

**Products Table**
| product_id | product_name |
|------------|--------------|
| 501        | Laptop       |
| 502        | Mouse        |

**Order_Products Table** (Junction Table)
| order_id | product_id | quantity |
|----------|------------|----------|
| 1001     | 501        | 1        |
| 1001     | 502        | 2        |
| 1002     | 501        | 1        |

#### Relationship Type:
- **Many-to-Many (M:M)**: Each order can include multiple products, and each product can appear in multiple orders.

</details>