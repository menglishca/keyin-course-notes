---
title: QAP 1 - Database Design and Normalization
---

## Objective:
Design a relational database schema based on a given scenario and demonstrate an understanding of database normalization. Identify and describe the types of relationships between tables. Explain the benefits of using a database for managing the data.
**Due Date: January 22nd, 2024 at 11:59PM**

## Scenario:
Imagine you are designing a database for a small online bookstore. The bookstore needs to manage information about books, authors, customers, and orders.

## Requirements
1. **Design Tables:**
- Create a set of tables that meet the following requirements:
  - **Books**: Each book has a title, ISBN (all numbers), publication year, price, and author. Each book can belong to multiple genres. Each book can have only one author.
  - **Authors**: Each author has a unique ID, name, and birthplace.
  - **Genres**: Each genre has a unique ID and name.
  - **Customers**: Each customer has a unique ID, name, email, and address.
  - **Orders**: Each order is placed by a customer and contains one or more books. Each order has a unique ID, a date, and a status (e.g., shipped, delivered). Multiple copies of the same book can be present in an order.
- Draw a diagram showing the tables, ensure the diagram shows:
  - Column names
  - Primary keys
  - Foreign keys, and what table that foreign key relates to

2. **Normalization:**
- Design the tables and ensure they adhere to 1NF, 2NF, and 3NF.
- Write a description of how each table meets 1NF, 2NF and 3NF

3. **Relationships:**
- Identify and describe the types of relationships between the following entities, documenting junction tables if necessary:
  - Books and Authors
  - Books and Genres
  - Orders and Books
  - Customers and Orders

4. **Benefits of Using a Database:**
- Explain why the bookstore would want to use a database for managing this data. Potentially considering aspects such as data redundancy, improvements in store efficiency and/or ability to scale.

## Submission Guidelines
- Submit a PDF containing:
  - All required table designs with primary and foreign keys, and relationships between tables indicated
  - A description of how each table meets 1NF, 2NF, and 3NF.
  - An explanation of the relationships between tables and how they are represented in your design
  - An explanation of the benefits of using a database for this data.
- Diagrams do not have to be any standard form, as long as the data is present.  A tool like: [https://dbdiagram.io](https://dbdiagram.io) may help, but is not required.
- Submissions should be made on Teams via the appropriate assignment
- Submissions should **only** include your PDF file
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/DatabaseProgramming-SD14Jan.2025-Apr.2025/ERhPYAhTYw5LncPYJt1qjfABVmfRwDZvyAWrtZGZmzgjBA?e=vqGUKb)
  - If an extension is needed please reach out before the due date

## Pass Outstanding Criteria
- Achieve a grade of 80% or above on the QAP.

## Grading Rubric

| **Category**                       | **Criteria**                                                                                               | **Points** |
|------------------------------------|------------------------------------------------------------------------------------------------------------|------------|
| **Table Designs**                  | **Books Table**: Includes all required fields and establishes relationships to other tables as needed.     | 15         |
|                                    | **Authors Table**: Includes all required fields and establishes relationships to other tables as needed.   | 10         |
|                                    | **Genres Table**: Includes all required fields and establishes relationships to other tables as needed.    | 10         |
|                                    | **Customers Table**: Includes all required fields and establishes relationships to other tables as needed. | 10         |
|                                    | **Orders Table**: Includes all required fields and establishes relationships to other tables as needed.    | 10         |
| **Normalization**                  | Accurate explanation of how each table meets 1NF, 2NF, and 3NF.                                            | 15         |
| **Relationships and Foreign Keys** | **Relationships**: All relationships are correctly identified (1:1, 1:M, M:M).                             | 10         |
|                                    | **Foreign Keys**: Appropriate foreign keys are used to establish relationships between tables.             | 5          |
| **Benefits of Using a Database**   | Comprehensive explanation of why a database is beneficial for managing bookstore data.                     | 10         |
| **Documentation and Presentation** | **Schema Diagram**: Clear and accurate schema diagram showing tables and their relationships.              | 5          |
| **Total Points**                   |                                                                                                            | **100**    |

Good luck! If you have any questions, please don't hesitiate to ask!