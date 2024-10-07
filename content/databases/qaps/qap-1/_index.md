---
title: QAP 1 - Database Design and Normalization
---

## Objective:
Design a relational database schema based on a given scenario and demonstrate an understanding of database normalization. Identify and describe the types of relationships between tables. Explain the benefits of using a database for managing the data.
**Due Date: September 25th, 2024 at 11:59PM**

## Scenario:
Imagine you are designing a database for a small online bookstore. The bookstore needs to manage information about books, authors, customers, and orders.

## Requirements
1. **Design Tables:**
- Create a set of tables that meet the following requirements:
  - **Books**: Each book has a title, ISBN, publication year, price, and author. Each book can belong to multiple genres.
  - **Authors**: Each author has a unique ID, name, and birthplace.
  - **Genres**: Each genre has a unique ID and name.
  - **Customers**: Each customer has a unique ID, name, email, and address.
  - **Orders**: Each order is placed by a customer and contains one or more books. Each order has a unique ID, a date, and a status (e.g., shipped, delivered). Multiple copies of the same book can be present in an order.

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

## Pass Outstanding Criteria
- Achieve a grade of 85% or above on the QAP.

## Grading Rubric

1. **Table Designs (50 points)**
  - **50 points:** All required tables are present. Tables includes correct fields with any necessary primary or foreign keys, handle all relationships correctly, and adhere to normalization principles.
  - **25-49 points:** Most of the required tables are present, most fields are included, minor issues are present with the primary/foreign keys, minor issues are present with the relationships between tables and/or minor issues exist in the normalization.
  - **0-24 points:** Many of the required tables are missing, tables are missing key fields, tables have major issues with primary/foreign keys, tables have issues with relationships with other tables and/or fail to adhere to normalization principles.

2. **Normalization (15 points)**
  - **15 points:** Complete and accurate explanations of how each table meets 1NF, 2NF, and 3NF.
  - **8-14 points:** Explanations cover most aspects but may have minor inaccuracies or omissions.
  - **0-7 points:** Explanations are incomplete, incorrect, or missing.

3. **Relationships and Foreign Keys (15 points)**  
   - **15 points:** All relationships are correctly identified (1:1, 1:M, M:M) and appropriate foreign keys are used.
   - **8-14 points:** Most relationships and foreign keys are correctly identified.
   - **0-7 points:** Incorrect or missing relationships and foreign keys.

4. **Benefits of Using a Database (10 points)**
    - **10 points:** Provides a comprehensive explanation of why a database is beneficial for managing bookstore data
    - **5-9 points:** Explanation is present but may have minor omissions or lack depth.
    - **0-4 points:** Explanation is incomplete, incorrect, or missing.

5. **Documentation and Presentation (10 points)**
    - **10 points:** Clear schema diagram showing tables and relationships, with well-organized and thorough written explanations.
    - **5-9 points:** Documentation and presentation are mostly clear but may have minor issues or lack some detail.
    - **0-4 points:** Documentation and presentation are incomplete, unclear, or missing key details.

**Total: 100 Points**

Good luck! If you have any questions, please don't hesitiate to ask!