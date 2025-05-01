---
title: 2. How relational databases link data
---

- Now that we've figured out how to model standalone data in a table, how would we model two related pieces of data?

### 1. Example - Linking students to their homeroom teacher
- Let's consider we have to complete the following:
  - This time, we're not just tasked with storing the data about the students, but we also want to store the data about their teachers. Also, someone decided we need to store the student's homeroom teacher as well.
  - To begin, let's take a look at the teachers we have to store:
    - Mr. Kennedy, Classroom: 212
    - Ms. Jackson, Classroom: 101
    - Mr. Dufrane, Classroom: 103
  - Like before, we can map that data into columns:
    - We'll need one column for the teacher's name, and that column should be a **string**
    - We'll need a second column for the teacher's classroom number and that column should be an **integer**
  - This means our resulting tables will look like:

    **Teachers**
    | teacher_name | classroom |
    |--------------|-----------|
    | Mr. Kennedy  | 212       |
    | Ms. Jackson  | 101       |
    | Mr. Dufrane  | 103       |

    **Students**
    | id  | name        | age | grade |
    |-----|-------------|-----|-------|
    | 1   | John Doe    | 15  | 10    |
    | 2   | Jane Smith  | 16  | 11    |
    | 3   | Sam Brown   | 14  | 9     |

### 2. Foreign Keys and Primary Keys
- Perfect, now that we have the teacher's modeled, how do we link these two tables together and add the homeroom teacher to each student's row?
- Relational databases link one table to another through the use of two keys: **primary keys** and **foreign keys**
  - **Primary Key**: A column in the table which unique for every record in the table
    - For students, this could be their student ID
  - **Foreign Key**: A key that is used to link two tables together, where the _foreign key_ in one table points to the _primary key_ in another
- To link the students to their homeroom teachers, we need to establish a **foreign key** in the `students` table pointing to the **primary key** in the `teachers` table
- First, we need to establish a primary key in the `teachers` table
  - As long as the value is unique in each row, any column has the potential to be a primary key
  - The teacher name isn't a great choice, as we could have more teachers later and their names could be repeated
  - Classroom could work, as only one teacher can be in a classroom, so we'd never have an issue with repetition
  - Or, we could add a new column called `id` (or something similar) which we add exclusively to use as the primary key
  - There's no perfect answer here, so either column is acceptable, we'll use `classroom`
- Now that we've added the "primary key" to the `teachers` table, we can add `classroom` as a `foreign key` to the `students` table

### 3. Looking at the linked tables
- Once we populate each student's homeroom classroom number, we'll have linked the `students` table to the `teachers` table
- Assuming that "John Doe" is in classroom 101, "Jane Smith" is in classroom 103 and "Sam Brown" is in classroom 212, our `students` table now looks like this:

    **Students**
    | id  | name        | age | grade | classroom |
    |-----|-------------|-----|-------|-----------|
    | 1   | John Doe    | 15  | 10    | 101       |
    | 2   | Jane Smith  | 16  | 11    | 103       |
    | 3   | Sam Brown   | 14  | 9     | 212       |

- Now if we want to get "John Doe"'s homeroom teacher name, we can take his `classroom` value and look that up in the `teachers` table. Then we'll see his homeroom teacher is "Ms. Jackson"

### 4. Summary
- Tables are linked via a "Foreign key" in one table, pointing to the "Primary key" of another
- A "primary key" is an attribute in a table that is always unique and never has a repeating value

### 5. More data linking examples

<details>
  <summary>Example 1: Tracking Customer Orders</summary>

### Problem:
A company wants to track which orders are placed by which customers. We need to link orders with the customers who placed them.

### Tables:

**Customers Table**
| customer_id | name       | email               |
|-------------|------------|---------------------|
| 1           | Alice Smith| alice@example.com   |
| 2           | Bob Jones  | bob@example.com     |

**Orders Table**
| order_id | order_date  | amount |
|----------|-------------|--------|
| 101      | 2024-09-01  | 250.00 |
| 102      | 2024-09-02  | 150.00 |

### Choosing Primary and Foreign Keys:

1. **Primary Key**:
   - In the `Customers` table, `customer_id` serves as the primary key. It uniquely identifies each customer in the table.
   - In the `Orders` table, `order_id` serves as the primary key. It uniquely identifies each order.

2. **Foreign Key**:
   - To link the `Orders` table to the `Customers` table, we need a foreign key in the `Orders` table.
   - `customer_id` in the `Orders` table will be a foreign key referencing `customer_id` in the `Customers` table.

### Resulting Table Structure:

**Customers Table**
  **Primary Key**: `customer_id`
  | customer_id | name       | email               |
  |-------------|------------|---------------------|
  | 1           | Alice Smith| alice@example.com   |
  | 2           | Bob Jones  | bob@example.com     |

**Orders Table**
  **Primary Key**: `order_id`
  **Foreign Key**: `customer_id` (refers to `customer_id` in the `Customers` table)
  | order_id | customer_id | order_date  | amount |
  |----------|-------------|-------------|--------|
  | 101      | 1           | 2024-09-01  | 250.00 |
  | 102      | 2           | 2024-09-02  | 150.00 |

### Explanation:
- The **primary key** in each table ensures that every record is unique.
- The **foreign key** (`customer_id` in the `Orders` table) links to the primary key (`customer_id` in the `Customers` table), establishing a relationship between orders and customers.
- This relationship allows tracking which orders are placed by which customers, helping to manage and analyze customer orders efficiently.

</details>

<details>
  <summary>Example 2: Library Book Loans</summary>

### Problem:
A library needs to track which books are checked out by which members.

### Tables:

**Members Table**
| member_id | name         | membership_date |
|-----------|--------------|-----------------|
| 1         | Emily Brown  | 2023-01-15      |
| 2         | Mike Johnson | 2023-06-10      |

**Books Table**
| book_id | title               | author         |
|---------|---------------------|----------------|
| 301     | "1984"              | George Orwell  |
| 302     | "To Kill a Mockingbird" | Harper Lee   |

**Loans Table**
| loan_id | member_id | book_id | loan_date   |
|---------|-----------|---------|-------------|
| 401     | 1         | 301     | 2024-09-05  |
| 402     | 2         | 302     | 2024-09-06  |

### Solution:
- **Primary Key**:
  - `member_id` in the `Members` table.
  - `book_id` in the `Books` table.
  - `loan_id` in the `Loans` table.
  
- **Foreign Key**:
  - `member_id` and `book_id` in the `Loans` table are foreign keys.
  - `member_id` refers to the `member_id` in the `Members` table.
  - `book_id` refers to the `book_id` in the `Books` table.
  - This structure allows tracking which member has borrowed which book and the loan date.

  <details>
    <summary>Other possible solutions</summary>

      **Members Table**
      | member_id | name         | membership_date | borrowed_book_id |
      |-----------|--------------|-----------------|------------------|
      | 1         | Emily Brown  | 2023-01-15      | 301              |
      | 2         | Mike Johnson | 2023-06-10      | 302              |

      **Books Table**
      | book_id | title               | author         |
      |---------|---------------------|----------------|
      | 301     | "1984"              | George Orwell  |
      | 302     | "To Kill a Mockingbird" | Harper Lee   |

      - This setup only allows a member to borrow one book at a time. Given libraries allow a member to borrow multiple books at a time, this **will not** work
    
        **Members Table**
      | member_id | name         | membership_date |
      |-----------|--------------|-----------------|
      | 1         | Emily Brown  | 2023-01-15      |
      | 2         | Mike Johnson | 2023-06-10      |

      **Books Table**
      | book_id | title               | author         | borrower_id
      |---------|---------------------|----------------|--------------|
      | 301     | "1984"              | George Orwell  | 1            |
      | 302     | "To Kill a Mockingbird" | Harper Lee   | 2          |

      - This setup would only work if the books in the table are representing specific copies of the book (aka, if the library had multiple copies of "1984", "1984" would be in the "Books Table" multiple times, each wih their own ID)
      - You would also need to allow `NULL` values in the `borrowoer_id` field to indicate when a book is not actively loaned out, or come up with a "in library" member to be "borrowing" a book when another member doesn't have it
      - You would also have no way to track historical book loans, as you only maintain data about the active loan
  </details>

</details>

<details>
  <summary>Example 3: Employee Assignments to Projects</summary>

### Problem:
A company needs to track which employees are assigned to which projects. We need to link employee assignments to specific projects.

### Tables:

**Employees Table**
| employee_id | name          | department    |
|-------------|---------------|---------------|
| 1           | Sarah Miller  | Engineering   |
| 2           | James Wilson  | Marketing     |

**Projects Table**
| project_id | project_name      | deadline   |
|------------|-------------------|------------|
| 1001       | Website Redesign  | 2024-12-15 |
| 1002       | Market Research   | 2024-11-30 |

**Assignments Table**
| assignment_id | employee_id | project_id | start_date  |
|---------------|-------------|------------|-------------|
| 501           | 1           | 1001       | 2024-09-01  |
| 502           | 2           | 1002       | 2024-09-10  |

### Choosing Primary and Foreign Keys:

1. **Primary Key**:
   - In the `Employees` table, `employee_id` serves as the primary key. It uniquely identifies each employee.
   - In the `Projects` table, `project_id` serves as the primary key. It uniquely identifies each project.
   - In the `Assignments` table, `assignment_id` serves as the primary key. It uniquely identifies each assignment record.

2. **Foreign Keys**:
   - To link the `Assignments` table to the `Employees` table, `employee_id` in the `Assignments` table will be a foreign key referencing `employee_id` in the `Employees` table.
   - To link the `Assignments` table to the `Projects` table, `project_id` in the `Assignments` table will be a foreign key referencing `project_id` in the `Projects` table.

### Resulting Table Structure:

**Employees Table**
- **Primary Key**: `employee_id`
- | employee_id | name          | department    |
- |-------------|---------------|---------------|
- | 1           | Sarah Miller  | Engineering   |
- | 2           | James Wilson  | Marketing     |

**Projects Table**
- **Primary Key**: `project_id`
- | project_id | project_name      | deadline   |
- |------------|-------------------|------------|
- | 1001       | Website Redesign  | 2024-12-15 |
- | 1002       | Market Research   | 2024-11-30 |

**Assignments Table**
- **Primary Key**: `assignment_id`
- **Foreign Keys**:
  - `employee_id` (refers to `employee_id` in the `Employees` table)
  - `project_id` (refers to `project_id` in the `Projects` table)
- | assignment_id | employee_id | project_id | start_date  |
- |---------------|-------------|------------|-------------|
- | 501           | 1           | 1001       | 2024-09-01  |
- | 502           | 2           | 1002       | 2024-09-10  |

### Explanation:
- The **primary keys** in each table ensure that each record is uniquely identified.
- The **foreign keys** in the `Assignments` table link to the primary keys in the `Employees` and `Projects` tables.
- This structure helps track which employees are assigned to which projects and when the assignments started, providing clear visibility into resource allocation and project progress.

</details>