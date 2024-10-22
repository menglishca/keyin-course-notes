---
title: QAP 2 - SQL and PostgreSQL Mastery
---

## Objective
Complete both provided problems below, make sure to include all SQL to create the tables, insert the data and perform all queries.  
**Due date: October 14th, 2024 at 11:59PM**

## Problem 1: University Course Enrollment System

### Scenario
You're tasked with developing a system to manage university students, professors, courses, and their enrollments.
  - A single student can register for multiple courses
  - A single professor can teach multiple courses
  - A course can only have one professor
  - A course can have multiple students

### Requirements
1. **Create Tables**:
    - **students**: Store the following columns:
      - `id` (auto-incrementing primary key)
      - `first_name` (first name of the student)
      - `last_name` (last name of the student)
      - `email` (student email)
      - `school_enrollment_date` (the date when the student enrolled in school)
    - **professors**: Store the following columns:
      - `id` (auto-incrementing primary key)
      - `first_name` (first name of the professor)
      - `last_name` (last name of the professor)
      - `department` (professor's department)
    - **courses**: Store the following columns:
      - `id` (auto-incrementing primary key)
      - `course_name` (name of the course)
      - `course_description` (brief description of the course)
      - `professor_id` (foreign key referencing `professors(id)`)
    - **enrollments**: Store the following columns:
      - `student_id` (foreign key referencing `students(id)`)
      - `course_id` (foreign key referencing `courses(id)`)
      - `enrollment_date` (the date of enrollment in the course)
      - Make `student_id` and `course_id` a composite primary key.

2. **Insert Data**:
    - Insert at least **5 students**, **4 professors**, and **3 courses**.
    - Enroll multiple students in different courses, making sure there are at least 5 enrollments in total.

### Tasks
1. **Write SQL Queries**:
    - Retrieve the **full names** (by full name we mean the first name and last name joined into one column, separated by a space) of all students enrolled in "Physics 101".
    - Retrieve a list of all courses along with the **professor's full name** who teaches each course.
    - Retrieve all courses that have students enrolled in them.
   
2. **Update Data**:
    - Update one of the student's emails.

3. **Delete Data**:
    - Remove a student from one of their courses.

## Problem 2: Online Store Inventory and Orders System

### Scenario
You are developing a system to manage products, customers, and their orders in an online store.

### Requirements
1. **Create Tables**:
    - **products**: Store the following columns:
      - `id` (auto-incrementing primary key)
      - `product_name` (name of the product)
      - `price` (price of the product)
      - `stock_quantity` (current stock level of the product)
    - **customers**: Store the following columns:
      - `id` (auto-incrementing primary key)
      - `first_name` (customer's first name)
      - `last_name` (customer's last name)
      - `email` (customer's email)
    - **orders**: Store the following columns:
      - `id` (auto-incrementing primary key)
      - `customer_id` (foreign key referencing `customers(id)`)
      - `order_date` (date when the order was placed)
    - **order_items**: Store the following columns:
      - `order_id` (foreign key referencing `orders(id)`)
      - `product_id` (foreign key referencing `products(id)`)
      - `quantity` (quantity of the product in the order)
      - Make `order_id` and `product_id` a composite primary key.

2. **Insert Data**:
  - Insert at least **5 products**, **4 customers**, and **5 orders** (each order should have at least two items ordered)

### Tasks
1. **Write SQL Queries**:
    - Retrieve the **names** and **stock quantities** of all products.
    - Retrieve the product names and quantities for one of the orders placed.
    - Retrieve all orders placed by a specific customer (including the ID's of what was ordered and the quantities).
   
2. **Update Data**:
    - Perform an update to simulate the reducing of stock quantities of items after a customer places an order. Please describe or indicate which order you are simulating the reducton for

3. **Delete Data**:
    - Remove one of the orders and all associated order items from the system.

## Pass Outstanding Criteria
- Achieve a grade of 85% or above

## Submission Guidelines
- Submit the SQL scripts/queries that perform:
  - The creation of all required tables
  - The insertion of all required data
  - All the tasks listed above for both problems
- One script/file per problem is fine, or feel free to break it into multiple scripts if you'd prefer
- It is recommended to test your queries and manipulations on pgAdmin to ensure things work correctly
- Submissions should be made on Teams under the appropriate assignment
- Submissions should **only** include a link to your github repository which contains the complete code for your QAP
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstasckJavascript-S3Sept.2024-Dec.2024912/EYwpucIvncpDoR94yNj3fOkB0CsE4c0IZ53Kqov0BumSAA?e=7N9ZfR)
  - If an extension is needed, please reach out to me directly before the assignment due date.

## Grading Rubric

| Category              | Description                                                                                           | Points  |
|-----------------------|-------------------------------------------------------------------------------------------------------|---------|
| **Functionality**     | **Table Creation**: Creates all required tables with appropriate data types, keys, and relationships. | 10      |
|                       | **Data Insertion**: Successfully inserts all required data into the tables.                           | 5       |
|                       | **Data Querying**: Executes all required SELECT queries and retrieves correct data.                   | 15      |
|                       | **Functionality Total**:                                                                              | **25**  |
| **Correctness**       | **Full Name Query**: Correctly retrieves full names of students enrolled in "Physics 101."            | 10      |
|                       | **Course and Professor Query**: Retrieves courses with corresponding professor names.                 | 10      |
|                       | **Student Count per Course**: Retrieves correct number of students enrolled in each course.           | 10      |
|                       | **Product and Quantity Query**: Retrieves all product names and quantities for a given order.         | 10      |
|                       | **Correctness Total**:                                                                                | **40**  |
| **Code Quality**      | **SQL Syntax**: Queries and commands are written with clear, correct SQL syntax.                      | 5       |
|                       | **Naming Conventions**: Tables, columns, and variables follow meaningful naming conventions.          | 5       |
|                       | **Code Quality Total**:                                                                               | **10**  |
| **Git Hygiene**       | **Commit Frequency**: Regular commits reflecting meaningful progress throughout development.          | 5       |
|                       | **Commit Quality**: Commit messages are clear, concise, and descriptive.                              | 5       |
|                       | **Git Hygiene Total**:                                                                                | **10**  |
| **Data Manipulation** | **Update Query**: Updates student email or stock quantity correctly.                                  | 5       |
|                       | **Delete Query**: Correctly removes a student from a course or an order from the system.              | 5       |
|                       | **Data Manipulation Total**:                                                                          | **10**  |
| **Total Points**      |                                                                                                       | **100** |

