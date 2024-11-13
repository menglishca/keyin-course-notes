---
title: 1. Introduction to Relational Databases
---

## 1. What is a relational database?
- A **relational database** is a type of database where the way the pieces of data relate to each other is critical to the operation of the database
- Relational databases are known for their characteristic table structure for data
- They are also known for the language used to work with them, SQL (Structured Query Language)

## 2. How does a relational database store data?
- As previously mentioned, relational databases are known for their table structure for data, but what does that mean?
- Let's start with an example and build a relational database table from it
- **Example:**
    - You're tasked with managing information in a school, and you need to store the student's information in a relational database
    - To start with you have three students to store:
        - **John Doe**, student ID: `1`, age: `15`, current grade: `10`
        - **Jane Smith**, student ID: `2`, age: `16`, current grade: `11`
        - **Sam Brown**, student ID: `3`, age: `14`, current grade `9`
- Judging by what we were provided from the school's administration, we have four pieces of information we need to store for each student:
    - Name
    - Student ID
    - Age
    - Current Grade

- Given we're only storing data about students, all this data can fall into one _relation_ or _table_
  - A **table** is how a relational database stores data about a specific relation of data
  - Each table is made up of rows and columns
- So, we'll start by creating a table for the students
- As mentioned above, a table needs **rows** and  **columns** 
  - A **column** in a table is used to represent a specific attribute of the data
    - In our case with the students, we have four pieces of data (or _attributes_) for each student, so we'd need four columns
  - Each column in a table must have a **name** and a **datatype**
    - The name is used to help identify what the attribute is
        - A column full of numbers is really difficult to use if you don't know what those numbers represent
    - The datatype enforces the rules about what can be put into the column
        - Some common datatypes are: integer (whole numbers), varchar (strings) and date
        - This makes sure you don't end up with someone writing their name in the age column, as the age column would only accept numbers
- With all this in mind, our table should look something like this:

**Students**
| id  | name        | age | grade |
|-----|-------------|-----|-------|

- Finally, we need the last piece of the table, the **rows**
    - A **row** in a table is used to represent a single entity of data
      - Each row **must** have a value for each column, and the values must conform to the column's datatype
      - In our case, a row would represent a single student, and we would need three rows
      - Each row would be one student with their ID, name, age and grade
- After adding in our rows, our table now looks like:

**Students**
| id  | name        | age | grade |
|-----|-------------|-----|-------|
| 1   | John Doe    | 15  | 10    |
| 2   | Jane Smith  | 16  | 11    |
| 3   | Sam Brown   | 14  | 9     |


## 3. Examples of creating tables
<details>
  <summary>Example 1: Managing an Online Store's Product Inventory</summary>

### Problem:
You need to keep track of products in an online store. Each product has a unique ID, a name, a price, and a stock quantity.

### Fields/Columns Required:
- **Product ID**: A unique identifier for each product.
- **Product Name**: The name of the product.
- **Price**: The price of the product.
- **Stock**: The number of items available in stock.

### Data Types:
- **Product ID**: Integer
- **Product Name**: String
- **Price**: Decimal
- **Stock**: Integer

### Completed Table:

| Product ID | Product Name  | Price | Stock |
|------------|---------------|-------|-------|
| 101        | Laptop        | 899.99| 15    |
| 102        | Headphones    | 29.99 | 120   |
| 103        | Monitor       | 199.99| 50    |
| 104        | Keyboard      | 49.99 | 80    |

</details>
<br />
<details>
  <summary>Example 2: Library Book Management</summary>

### Problem:
A library needs a database to manage its books. Each book has a unique identifier, a title, an author, and a year of publication.

### Fields/Columns Required:
- **Book ID**: A unique identifier for each book.
- **Title**: The title of the book.
- **Author**: The author of the book.
- **Year of Publication**: The year the book was published.

### Data Types:
- **Book ID**: Integer
- **Title**: String
- **Author**: String
- **Year of Publication**: Integer

### Completed Table:

| Book ID | Title                  | Author        | Year of Publication |
|---------|------------------------|---------------|---------------------|
| 201     | To Kill a Mockingbird   | Harper Lee    | 1960                |
| 202     | 1984                   | George Orwell | 1949                |
| 203     | Moby-Dick              | Herman Melville| 1851                |
| 204     | The Great Gatsby        | F. Scott Fitzgerald | 1925           |

</details>
<br />
<details>
  <summary>Example 3: Employee Records for a Company</summary>

### Problem:
A company needs to store information about its employees. Each employee has an ID, a name, a department, and a hire date.

### Fields/Columns Required:
- **Employee ID**: A unique identifier for each employee.
- **Name**: The employee’s full name.
- **Department**: The department the employee works in.
- **Hire Date**: The date the employee was hired.

### Data Types:
- **Employee ID**: Integer
- **Name**: String
- **Department**: String
- **Hire Date**: Date

### Completed Table:

| Employee ID | Name           | Department    | Hire Date  |
|-------------|----------------|---------------|------------|
| 301         | Alice Johnson  | HR            | 2015-03-10 |
| 302         | Bob Martinez   | IT            | 2018-06-22 |
| 303         | Clara Thompson | Marketing     | 2020-01-15 |
| 304         | Dave Smith     | Finance       | 2019-09-01 |

</details>
