---
title: QAP 1 - Database Design and Normalization
---

## Objective
Design a relational database schema based on a given scenario and demonstrate an understanding of:
- Creating database tables with appropriate column names and data types
- Identifying relationships in a relational database (1:1, 1:M, M:M)
- Designing tables that are normalized to Third Normal Form (3NF)
- Explaining the benefits of using a database to manage the data

### Due Date
**January 26th, 2026 at 11:59PM**

## Scenario
The platform sells tickets for events such as concerts, comedy shows, and talks. Customers can purchase tickets for events, and events may feature multiple performers.
  
Your database must support the following:
- **Events**
  - Each event has a name, date, location, and base ticket price.
- **Performers**
  - Each performer has a name and genre.
  - A performer may perform at multiple events.
  - An event may feature multiple performers.
- **Customers**
  - Each customer has a name and an email address.
- **Orders**
  - Each order is placed by a single customer.
  - Each order may contain one or more tickets.
- **Tickets**
  - Each ticket is for a specific event.
  - Multiple tickets for the same event may be included in a single order.

## Requirements
### Table Design
- Design a set of tables (you'll probably need more than one) to manage the scenario outlined above.
- Ensure you use proper names, and data types, and ensure foreign keys are present to represent any relationships (if necessary)
- Create a diagram that clearly shows:
  - All tables and their columns (including column names and data types)
  - Primary keys
  - Foreign keys and the tables they reference
  - Relationships between tables

- The diagram does not need to follow a specific notation. Tools such as https://dbdiagram.io may be helpful, but are not required. Hand-drawn diagrams are acceptable if they are clear and readable.

### Normalization
- Ensure that all of your tables are normalized to third normal form
- For each table include an explanation of how the table meets third normal form, such as not including multiple values in a single cell to satisfy first normal form

### Relationships
- Identify and describe the relationships between the following entities:
  - Customers and Orders
  - Orders and Tickets
  - Events and Tickets
  - Events and Performers
- For each relationship, describe:
  - The type of relationship (1:1, 1:M, or M:M)
  - How the relationship is represented in your design (foreign key or junction table)

### Benefits of Using a Database
- Explain why the event platform would want to use a database for managing this data. Potentially considering aspects such as data redundancy, improvements in efficiency and/or ability to scale.

## Submission Guidelines
- Submit a PDF containing:
  - Your table diagrams, showing all information outlined above
  - Your description of how a table is normalized to third normal form
  - An explanation of the relationships between tables and how they are represented in your design
  - An explanation of the benefits of using a database for this data.
- Diagrams do not have to be any standard form, as long as the data is present and readable. A tool like: [https://dbdiagram.io](https://dbdiagram.io) may help, but is not required. Something as simple as pictures of a hand drawn diagram are totally okay
- Submissions should be made on Teams via the appropriate assignment
- Submissions should **only** include your PDF file
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD14Sept.2025-Dec.2025/EaNwhyZvUxhIpqLD-N68n64BaOjdRmmLNGNw_u9tarzk4A?e=2i061T)
  - If an extension is needed please reach out before the due date

## Pass Outstanding Criteria
- Achieve a grade of 80% or above on the QAP.

## Grading Rubric

| Category                                    | Criteria                                                                                                 | Points  |
|---------------------------------------------|----------------------------------------------------------------------------------------------------------|---------|
| **Table Designs**                           |                                                                                                          | **50**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Table Design        | Tables include appropriate fields, primary keys, and foreign keys                                        | 50      |
| **Normalization**                           |                                                                                                          | **20**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Normalization Levels| Accurate explanation of how each table meets 1NF, 2NF, and 3NF.                                          | 20      |
| **Relationships and Foreign Keys**          |                                                                                                          | **15**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Relationships       | All relationships are correctly identified (1:1, 1:M, M:M).                                              | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Foreign Keys        | Appropriate foreign keys are used to establish relationships between tables.                             | 5       |
| **Benefits of Using a Database**            |                                                                                                          | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Explanation         | Comprehensive explanation of why a database is beneficial for managing bookstore data.                   | 10      |
| **Documentation and Presentation**          |                                                                                                          | **5**   |
| &nbsp;&nbsp;&nbsp;&nbsp;Schema Diagram      | Clear and accurate schema diagram showing tables and their relationships.                                | 5       |
| **Total Points**                            |                                                                                                          | **100** |

Good luck! If you have any questions, please don't hesitate to ask!