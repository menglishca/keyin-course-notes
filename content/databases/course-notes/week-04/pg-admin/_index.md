---
title: 5. Working with pgAdmin
---

To reinforce some of the earlier concepts of SQL and Postgres, we'll be working through some examples using the pgAdmin tool to interact with our PostgreSQL database

## What is pgAdmin?
- pgAdmin is a graphical interface for interacting with and managing PostgreSQL databases
- You can do things like create tables, insert data, update data, etc. everything you would expect from a command line
- It also can be a little bit easier to use, depending on your preferences

## Example 1: School Enrollment System
You're tasked with creating a simple School Enrollment System to manage students, courses, and their enrollments in those courses. Using PostgreSQL and pgAdmin, build the system step-by-step.

<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **student data**:

| First Name | Last Name  | Email                           | School Enrollment Date |
|------------|------------|---------------------------------|------------------------|
| Alice      | Johnson    | alice.johnson@example.com       | September 15, 2024     |
| Bob        | Smith      | bob.smith@example.com           | September 16, 2024     |
| Charlie    | Williams   | charlie.williams@example.com    | September 17, 2024     |

- Your database must store the following **course data**:

| Course Name    | Course Description               |
|----------------|----------------------------------|
| Physics 101    | Introduction to Physics          |
| Literature 201 | Basics of World Literature       |
| History 101    | A Survey of Historical Events    |

- Your database must store the following **course enrollments**:

| Student Name          | Course Name    | Enrollment Date     |
|-----------------------|----------------|---------------------|
| Alice Johnson         | Physics 101    | September 18, 2024  |
| Alice Johnson         | Literature 201 | September 18, 2024  |
| Bob Smith             | History 101    | September 19, 2024  |

### Tasks
1. Create the tables to store all of this data
1. Insert the data provided into the tables
1. Write `SELECT` statements to do the following:
    - Retrieve the **full names** of all students
    - Retrieve the **course names** of all of "Bob Smith"'s courses
    - Retrieve all **students** enrolled in "Physics 101"
1. Change "Charlie William"'s email to `charlie.w.newemail@example.com`
1. Remove "Alice Johnson" from "Literature 201"
</details>

## Example 2: Library Management System
You're tasked with creating a simple Library Management System to manage books, authors, and the books' availability for checkout. Using PostgreSQL and pgAdmin, build the system step-by-step.

<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **author data**:

| First Name | Last Name  | Date of Birth | Nationality         |
|------------|------------|---------------|---------------------|
| George     | Orwell     | June 25, 1903 | British             |
| Jane       | Austen     | December 16, 1775 | British         |
| Mark       | Twain      | November 30, 1835 | American         |

- Your database must store the following **book data**:

| Title               | Genre      | Publication Year | Author          |
|---------------------|------------|------------------|-----------------|
| 1984                | Dystopian  | 1949             | George Orwell   |
| Pride and Prejudice  | Romance    | 1813             | Jane Austen     |
| The Adventures of Huckleberry Finn | Adventure | 1884 | Mark Twain    |

- Your database must store the following **book availability data**:

| Book Title                          | Available   | Last Checkout Date |
|-------------------------------------|-------------|--------------------|
| 1984                                | Yes         | September 10, 2024 |
| Pride and Prejudice                 | No          | August 25, 2024    |
| The Adventures of Huckleberry Finn  | Yes         | September 15, 2024 |

### Tasks
1. Create the tables to store all of this data
1. Insert the data provided into the tables
1. Write `SELECT` statements to do the following:
    - Retrieve the **full names** of all authors
    - Retrieve the **titles** of all available books
    - Retrieve the **titles** of all books by "George Orwell"
1. Update the **availability** of "Pride and Prejudice" to "Yes"
1. Remove "The Adventures of Huckleberry Finn" from the available books list
</details>

## Example 3: Employee Management System
You're tasked with creating an Employee Management System to manage employees, departments, and their salaries. Using PostgreSQL and pgAdmin, build the system step-by-step.

<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **employee data**:

| First Name | Last Name  | Email                           | Hire Date        |
|------------|------------|---------------------------------|------------------|
| Sarah      | Connor     | sarah.connor@example.com        | January 5, 2023  |
| John       | Doe        | john.doe@example.com            | March 12, 2022   |
| Jane       | Smith      | jane.smith@example.com          | May 15, 2023     |

- Your database must store the following **department data**:

| Department Name    | Department Head |
|--------------------|-----------------|
| Human Resources    | Sarah Connor    |
| Engineering        | John Doe        |
| Marketing          | Jane Smith      |

- Your database must store the following **salary data**:

| Employee Name    | Department         | Salary      |
|------------------|--------------------|-------------|
| Sarah Connor     | Human Resources    | $75,000     |
| John Doe         | Engineering        | $85,000     |
| Jane Smith       | Marketing          | $70,000     |

### Tasks
1. Create the tables to store all of this data
1. Insert the data provided into the tables
1. Write `SELECT` statements to do the following:
    - Retrieve the **full names** of all employees
    - Retrieve the **department names** where the salary is above $70,000
    - Retrieve the **department head** of "Engineering"
1. Increase **Jane Smith's salary** to $75,000
1. Remove "John Doe" from the "Engineering" department
</details>

## Example 4: E-Commerce Order Management System
You're tasked with creating an E-Commerce Order Management System to manage customers, products, orders, and order details. Using PostgreSQL and pgAdmin, build the system step-by-step.

<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **customer data**:

| First Name | Last Name  | Email                           | Address                     | City         | Country     |
|------------|------------|---------------------------------|-----------------------------|--------------|-------------|
| Emily      | Brown      | emily.brown@example.com         | 1234 Elm Street              | New York     | USA         |
| Michael    | Green      | michael.green@example.com       | 5678 Maple Avenue            | Los Angeles  | USA         |
| Sarah      | White      | sarah.white@example.com         | 246 Oak Street               | London       | UK          |

- Your database must store the following **product data**:

| Product Name     | Description       | Price       | Stock Quantity |
|------------------|-------------------|-------------|----------------|
| Laptop           | 15" gaming laptop | $1,500      | 20             |
| Smartphone       | Latest model      | $800        | 50             |
| Headphones       | Wireless headset  | $100        | 100            |

- Your database must store the following **order data**:

| Order ID | Customer Name  | Order Date         | Total Amount  |
|----------|----------------|--------------------|---------------|
| 1        | Emily Brown    | September 1, 2024  | $2,400        |
| 2        | Michael Green  | September 5, 2024  | $800          |

- Your database must store the following **order details data**:

| Order ID | Product Name  | Quantity | Line Total |
|----------|---------------|----------|------------|
| 1        | Laptop        | 1        | $1,500     |
| 1        | Headphones    | 3        | $300       |
| 2        | Smartphone    | 1        | $800       |

### Tasks
1. Create the tables to store all of this data
1. Insert the data provided into the tables
1. Write `SELECT` statements to do the following:
     - Retrieve the **full names** of all customers
     - Retrieve the **products** purchased by "Emily Brown"
     - Retrieve all **customers** who ordered a product costing more than $1,000
1. Update the **stock quantity** for "Headphones" after Emily Brown's purchase
1. Cancel Michael Green’s order by deleting all **order details** and the corresponding **order**
</details>

## Example 5: Hospital Management System
You're tasked with creating a Hospital Management System to manage patients, doctors, treatments, and prescriptions. Using PostgreSQL and pgAdmin, build the system step-by-step.  
<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **patient data**:

| First Name | Last Name  | Date of Birth | Address                 | Phone Number    |
|------------|------------|---------------|-------------------------|-----------------|
| John       | Miller     | May 15, 1985  | 789 Pine Street         | 555-1234        |
| Laura      | Turner     | February 28, 1992 | 987 Cedar Lane       | 555-5678        |
| Daniel     | Lewis      | July 8, 1975  | 456 Oak Avenue          | 555-8765        |

- Your database must store the following **doctor data**:

| First Name | Last Name  | Specialty           | Email                          |
|------------|------------|---------------------|---------------------------------|
| David      | Adams      | Cardiologist        | david.adams@hospital.com        |
| Susan      | Martinez   | Neurologist         | susan.martinez@hospital.com     |
| Emily      | Johnson    | General Practitioner | emily.johnson@hospital.com     |

- Your database must store the following **treatment data**:

| Patient Name  | Doctor Name       | Treatment        | Treatment Date    |
|---------------|-------------------|------------------|-------------------|
| John Miller   | David Adams       | Heart Surgery    | August 15, 2024   |
| Laura Turner  | Emily Johnson     | Flu Treatment    | September 10, 2024 |
| Daniel Lewis  | Susan Martinez    | Brain Scan       | September 20, 2024 |

- Your database must store the following **prescription data**:

| Patient Name  | Doctor Name       | Medication       | Dosage  | Prescription Date |
|---------------|-------------------|------------------|---------|-------------------|
| John Miller   | David Adams       | Beta Blockers    | 50mg    | August 20, 2024   |
| Laura Turner  | Emily Johnson     | Ibuprofen        | 200mg   | September 11, 2024 |
| Daniel Lewis  | Susan Martinez    | Antidepressants  | 10mg    | September 22, 2024 |

### Tasks
1. Create the tables to store all of this data
1. Insert the data provided into the tables
1. Write `SELECT` statements to do the following:
     - Retrieve the **full names** of all doctors
     - Retrieve all **patients** treated by "Emily Johnson"
     - Retrieve all **prescriptions** for "John Miller"
1. Update the **dosage** for Laura Turner’s "Ibuprofen" prescription to 400mg
1. Remove **Daniel Lewis' Brain Scan treatment** from the system
</details>
